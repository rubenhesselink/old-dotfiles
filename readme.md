# Readme for my dotfiles

This is a collection of my dotfiles. I use these to configure my system to my liking and to make it easier to set up a new system.

## Installation

To install these dotfiles, clone this repository to your home directory

```properties
git clone git@github.com:rubenhesselink/dotfiles.git ~/.dotfiles
```

If git is not present yet on your system, you can install it with the following command:

```properties
brew install git
```

After cloning the repository, check the [installed-packages.md](./installed-packages.md) for all installed packages, to install all these packages run the following command:

```properties
xargs brew install < ~/.dotfiles/brew/brew_requirements.txt
```

