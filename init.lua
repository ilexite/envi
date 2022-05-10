--  .d88b.  88888b.  888   888 888 
-- d8P  Y8b 888 "88b 888  88P
-- 88888888 888  888 888 d8P  "888
-- Y8b.     888  888 888d8P    888
--  "Y8888  888  888 8888P     888b
--
-- A neovim config others will envy
-- Made by ilexite

-- Start impatient.nvim if installed
local exists, impatient = pcall(require, "impatient.nvim")
if exists then impatient.enable_profile() end

-- User config
require("user.opts")
require("user.keymaps")
require("user.autocommands")

-- Do plugin stuff
require("plugin").start(require("user.plugins"))

-- Don't load ShaDa file instantly
require("util.shada")

