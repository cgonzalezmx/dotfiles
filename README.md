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
wheris stow
```

or 

```sh
which stow
```

Clone the repo, `cd` into the `dotfiles` directory and run:

```sh
stow --dotfiles
```

And that's it. Optionally, for a cleaner home, rename the `dotfiles` directory
to `.dotfiles`.

```sh
mv dotfiles .dotfiles
```
