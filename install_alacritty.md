## Depedencies Installation
#### Debian/Ubuntu

```sh
apt install cargo cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
```
#### Fedora/Nobara
```sh
dnf install cargo cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++

```
#### Depedencies Installation

```sh
git clone https://github.com/alacritty/alacritty.git
cd alacritty/
cargo build --release
```
#### Desktop Entry
```sh
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database
```

