# Carlos' dotfiles

My personal dotfiles for the stuff I use in my Linux machine managed with GNU
stow.

Settings are for:
- alacritty
- Dunst
- fish
- Ghostty
- Hyprland
- Kitty
- lf
- mpd
- ncmpcpp
- Neovim
- starship
- vis
- Waybar
- yazi
- zsh

To use them make, sure `stow` is installed:

```sh
whereis stow
```

or 

```sh
which stow
```

Clone the repo, `cd` into the `dotfiles` directory.

To stow all the configs run:
```sh
stow --dotfiles */ --ignore='.git' --ignore='README.md'
```

To stow individual configs run:

```sh
stow --dotifiles <package-name> ...
```

And that's it. Optionally, for a cleaner home, rename the `dotfiles` directory
to `.dotfiles`.

```sh
mv dotfiles .dotfiles
```
