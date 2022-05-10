<div align="center">
    <h1>envi</h1>
    <p>A neovim config others will envy</p>
</div align="center">

# Table of contents

- [Install](#install)
- [Uninstall](#uninstall)

# Install

To install envi, close this repository to the required directory:

```bash
git clone --depth=1 https://github.com/ilexite/envi.git \
	${XDG_CONFIG_HOME:-$HOME/.config}/nvim
```

Now, envi should be installed and will perform a first-time setup once you
launch it.

It is recommended to run a `:checkhealth` once you install envi, and fix any
problems.

# Uninstall

Had enough fun with envi? To uninstall, remove your neovim config directory:

```bash
rm -rf ${XDG_CONFIG_HOME:-$HOME/.config}/nvim
```

Then, run neovim and perform a `:PackerClean`. envi should now be uninstalled.

