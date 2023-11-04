# theAbsTerm
Introducing a stunning terminal configuration for the modern developer! With the powerful combination of Kitty, Fish, and Neovim, your coding experience will be elevated to new heights. This repository features a beautiful and customizable terminal design that will make you excited to work on your projects. With its sleek and modern look, you'll feel like a coding pro in no time. Take your development environment to the next level with this impressive setup.

# Preview:
![theAbsTerm2](https://github.com/hamzahdili2001/theAbsTerm/assets/61630679/5a4a327e-2b41-4267-bccd-a4e684fdfd42)

# Installation:
1. first clone this repo.
2. second install `kitty`.
```bash
sudo apt install kitty
```
- copy the `kitty` folder in this repo and the `.fonts` into `.config/`:
```bash
cp -r kitty .fonts ~/.config/
```

3. lets install `fish` and the requirement for it to work.
```bash
sudo apt install fish fzf starship
```
also we need `exa`.
```bash
EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
curl -Lo exa.zip "https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v${EXA_VERSION}.zip"
sudo unzip -q exa.zip bin/exa -d /usr/local
rm -rf exa.zip
```
- copy `fish` folder to `.config`
```bash
cp -r fish ./config
```
4. Now lets start `kitty`. and do `fish` in terminal.
```bash
fish
```
Everything Working fine??
if not you can try install the missing packages that you don't have on your
distro you can debug it until it works.

5. now let's make `fish` default.
run this:
```bash
chsh -s $(which fish)
```

6. now the longest part `neovim`.
I am using [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) if you want to learn more.


- build prerequisites:
```bash
sudo apt-get install ninja-build gettext cmake unzip curl
```

I am building it from the source if you want to follow me here you go:
- neovim source:
```bash
sudo git clone https://github.com/neovim/neovim
```
- make install:
```bash
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
```

- Lazyvim:
```bash
sudo apt-get install lazygit ripgrep fd-find
```
- backup:
```bash
# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

5. now copy the `nivm` folder to your `~/.config/`
```bash
cp -r nvim ~/.config/
```

#### if you had some problems with the installation you can open an issue.
