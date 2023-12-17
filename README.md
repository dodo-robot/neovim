# Prerequisite

To install neovim on windows using the WSL

* download and install any font from  https://www.nerdfonts.com/.
If On a windows machine we need to install the font using


```
Install-Module Terminal-Icons -Scope CurrentUser
Import-Module Terminal-Icons
```

here you can find a gist with a powershell code snippet to install fonts on win
https://gist.github.com/markwragg/6301bfcd56ce86c3de2bd7e2f09a8839

* configure the new font as the default font for the terminal
    terminal settings > Appearance > Font >  CaskadyaCove NF ( <- example font )

* restart the terminal

The same applies for macOS/unix system based, so firstly you need to configure
a working font on you machine downloading it from the same site and pasting
the new font into ~/LIbrary/Fonts for mac users or into ~/.local/share/fonts

on linux we need to update the font cache

```
fc-cache -f -v
fc-list
```

* install packer on Unix based machines

`
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
 `

* install on windows
`
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
 `
