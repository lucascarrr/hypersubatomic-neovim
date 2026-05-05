# Hypersubatomic Theme

The Syntax palette is inspired from a chromatic palette similar to Solarized, however, there are significant deviations. Hypersubatomic uses a more vibrant palette with higher saturation against a dark background to create a high contrast theme. Color luminosities have been carefully selected by optical adjustment to create a balanced palette. The UI colorscheme is based on *Material Theme - Ocean High Contrast* with update Hypersubatomic palette.

Please file an issue if you find a bug or a PR for new language syntax features.

## Neovim

This repository can be installed directly as a Neovim colorscheme.

```lua
{
  "neilpanchal/hypersubatomic-vscode-theme",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("hypersubatomic")
  end,
}
```

You can also load it manually:

```vim
colorscheme hypersubatomic
```

The Neovim port includes classic syntax groups, Tree-sitter captures, LSP semantic tokens, diagnostics, git signs, completion menus, Telescope, file trees, which-key, lazy.nvim, and matching terminal colors.

### Color Palette
![Color Palette](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/color-palette.png)

### Python
![Python Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-py.png)

### PHP
![PHP Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-php.png)

### Javascript
![Javascript Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-js.png)

### C++
![C++ Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-cpp.png)

### HTML
![HTML Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-html.png)

### CSS
![CSS Screenshot](https://raw.githubusercontent.com/neilpanchal/hypersubatomic-vscode-theme/master/static/sample-css.png)
