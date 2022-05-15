local M = {}

M.start = function(cfg)
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/opt/packer.nvim"

    if fn.empty(fn.glob(install_path)) > 0 then
        packer_bootstrap = fn.system({
            "git", "clone", "--depth=1",
            "https://github.com/wbthomason/packer.nvim",
            install_path,
        })
    end

    vim.cmd("packadd packer.nvim")

    local packer = require("packer")
    local plugins = require("plugin.list")

    for _, plugin in pairs(cfg.custom) do
        table.insert(plugins, plugin)
    end

    packer.startup(function(use)
        for _, plugin in pairs(plugins) do
            for _, name in pairs(cfg.disable) do
                if plugin[1] == name then
                    plugin.disable = true
                end
            end

            use(plugin)
        end

        if packer_bootstrap then
            packer.sync()
        end
    end)
end

return M

