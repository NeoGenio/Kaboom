# Kaboom

This is a basic operating system which is by no means aiming to become the next Linux. I am making this as a hobby project just out of pure curiosity. If you find any bugs or code that could be written in a better way, please do not hesitate to create an `Issue` or `Pull Request`. It will help me a lot as I am trying to learn more about computers.

## Installing dependencies

To build on MacOS, make sure you have Homebrew installed.

Ubuntu/Debian
```console
sudo apt install nasm bochs
```
Arch Linux/Manjaro
```console
sudo pacman -S nasm bochs
```
MacOS
```console
brew install nasm bochs
```
Windows
```
I have absolutely no idea. Mabye try WSL. Good luck!
```

## Building

```console
nasm -f bin src/bootSect.s -o bin/bootSect.bin
```

## Running Kaboom

```console
bochs -q
```