# Hypersubatomic Neovim

Hypersubatomic is a high-contrast Neovim colorscheme ported from the original VS Code theme palette. It includes the original dark theme plus a reciprocal light theme, both using the same saturated accent colors.

## Neovim

Install this repository with your plugin manager and load either theme:

```lua
{
  "lucascarrr/hypersubatomic-neovim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("hypersubatomic")
  end,
}
```

```vim
colorscheme hypersubatomic
colorscheme hypersubatomic-light
```

You can also call the Lua setup function directly:

```lua
require("hypersubatomic").setup({ style = "dark" })
require("hypersubatomic").setup({ style = "light" })
```

The Neovim theme covers classic syntax groups, Tree-sitter captures, LSP semantic tokens, diagnostics, git signs, completion menus, Telescope, file trees, which-key, lazy.nvim, and terminal colors.

## tmux

Source the matching tmux theme from your `.tmux.conf`:

```tmux
source-file ~/.config/tmux/plugins/hypersubatomic-neovim/tmux/hypersubatomic-dark.tmux
source-file ~/.config/tmux/plugins/hypersubatomic-neovim/tmux/hypersubatomic-light.tmux
```

With TPM:

```tmux
set -g @plugin 'lucascarrr/hypersubatomic-neovim'
run '~/.tmux/plugins/tpm/tpm'
source-file ~/.tmux/plugins/hypersubatomic-neovim/tmux/hypersubatomic-dark.tmux
```

## Palette

Core accents:

```text
green   #00ae6b
red     #f2283c
blue    #277dff
cyan    #00a1b4
yellow  #ffc200
magenta #d72e82
violet  #875afb
orange  #ff7a00
```

Dark mode keeps the original editor base of `#0F111A`. Light mode mirrors the same accent language onto a bright `#eef6ff` base with adjusted neutrals for contrast.
