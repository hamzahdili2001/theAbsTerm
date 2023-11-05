# theAbsTerm
Introducing a stunning terminal configuration for the modern developer! With the powerful combination of Kitty, Fish, and Neovim, your coding experience will be elevated to new heights. This repository features a beautiful and customizable terminal design that will make you excited to work on your projects. With its sleek and modern look, you'll feel like a coding pro in no time. Take your development environment to the next level with this impressive setup.

# Preview:
![theAbsTerm2](https://github.com/hamzahdili2001/theAbsTerm/assets/61630679/bf496500-5f2b-4546-b937-977766ec9922)
![theAbsTerm1](https://github.com/hamzahdili2001/theAbsTerm/assets/61630679/367bdd31-5a1d-49bf-ba92-cba71c10cc86)
![theAbsTerm3](https://github.com/hamzahdili2001/theAbsTerm/assets/61630679/c2126346-e7ef-42dd-bcaa-f38ef2b94e0f)

# Installation:
let's backup your files:
```bash
sudo mv ~/.config/fish/ ~/.config/fish.back
sudo mv ~/.config/kitty ~/.config/kitty.back
sudo mv ~/.config/kitty ~/.config/kitty.back
```
1. first clone this repo. `git clone https://github.com/hamzahdili2001/theAbsTerm.git`
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
 bash -c EXA_VERSION=$(curl -s "https://api.github.com/repos/ogham/exa/releases/latest" | grep -Po '"tag_name": "v\K[0-9.]+')
 ```
```bash
bash -c "curl -Lo exa.zip 'https://github.com/ogham/exa/releases/latest/download/exa-linux-x86_64-v'$EXA_VERSION'.zip'"
```
```bash
rm -rf exa.zip
```

- copy `fish` folder to `.config`

```bash
cp -r fish ./config/

Now exit the terminal and enter again
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
