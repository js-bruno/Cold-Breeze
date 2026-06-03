<img src="https://pixelsafari.neocities.org/dividers/vine9.gif" />
<h1 align="center">🦚Zeh’s dotfiles🦩</h1>
<p align="center">
<div style="display:flex; justify-content:center; flex-direction:row; flex-wrap:wrap;">
   <!--                          BLUE LABELS                                                   -->
   <img align="center" src="https://adriansblinkiecollection.neocities.org/e71.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/e81.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/e69.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/e15.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/e45.gif" />
   <!--                          GREEN LABELS                                                  -->
   <img align="center" src="https://adriansblinkiecollection.neocities.org/d59.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/d43.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/d45.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/d36.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/d28.gif" />
   <!--                          PURPLE LABELS                                                 -->
   <img align="center" src="https://adriansblinkiecollection.neocities.org/f69.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/f67.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/f78.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/f39.gif" />
   <img align="center" src="https://adriansblinkiecollection.neocities.org/f68.gif" />
   <!--                          MISC LABELS                                                 -->
   <img align="center" src="https://adriansblinkiecollection.neocities.org/m1.gif" />
   <img align="center" src="https://pixelsafari.neocities.org/blinkies/sweetdreams.gif" />
   <img align="center" src="https://pixelsafari.neocities.org/blinkies/twinkle.gif" />
   <img align="center" src="https://pixelsafari.neocities.org/blinkies/web/badwebsite.gif" />
   <img align="center" src="https://pixelsafari.neocities.org/blinkies/web/dvdcrazy.gif" />

</div>
</p>
<p align="center">place where I store my poorly organized configurations</p>

![Desktop Print](desktop_image.png)

<!-- ## details -->
<!--   -->
<!-- > **OS:** &nbsp;   -->
<!-- > **WM / DE:** &nbsp;   -->
<!-- > **Shell:** &nbsp;   -->
<!-- > **Terminal:** &nbsp;   -->
<!-- > **Editor:** &nbsp;   -->
<!-- > **Bar:** &nbsp;   -->
<!-- > **Launcher:** &nbsp;   -->
<!-- > **Font:** &nbsp;   -->
<!-- > **Theme:** &nbsp;   -->
<!-- > **Icons:** &nbsp; -->
 
<img src="https://pixelsafari.neocities.org/dividers/vine9.gif" />
## Stow structure

Each top-level directory is a **stow package**. Its contents mirror your `$HOME`, so stow knows exactly where to symlink everything.
 
```
~/.dotfiles/
├── bash/
│   └── .bashrc
├── zsh/
│   └── .zshrc
├── git/
│   └── .gitconfig
├── nvim/
│   └── .config/nvim/
├── tmux/
│   └── .tmux.conf
└── ...
```
 
 
<img src="https://pixelsafari.neocities.org/dividers/vine9.gif" />

Install stow:
 
```bash
# debian
sudo apt install stow

# nix
nix shell -p stow
 
# macOS (Homebrew)
brew install stow
```
 
<img src="https://pixelsafari.neocities.org/dividers/vine9.gif" />
## setup with stow
 
**1. Clone the repo**
 
```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```
 
**2. Back up any existing configs you care about**
 
```bash
# example — do this for any file that already exists
mv ~/.bashrc ~/.bashrc.bak
```
 
**3. Stow a package**
 
```bash
stow bash        # links bash/.bashrc → ~/.bashrc
stow nvim        # links nvim/.config/nvim/ → ~/.config/nvim/
```
 
**4. Stow everything at once**
 
```bash
stow */
```
 
> **Tip:** use `stow -n` (dry run) to preview what would be linked before actually doing it.
 
**9. Remove a package**
 
```bash
stow -D bash     # removes symlinks created by the bash package
```
 
**0. Re-stow after adding/removing files**
 
```bash
stow -R bash     # equivalent to -D then -S
```
 
<img src="https://pixelsafari.neocities.org/dividers/vine9.gif" />
