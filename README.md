# Automate MacOS Setup
Simple project to automate Brew, MacOS, and NPM Packages. 

* **.bash_profile**: Profile with handy command aliases and customization
* **.gitconfig**: Configures git to use osxkeychain credential helper and sets custom colors
* **Brewfile**: List of CLI tools (brew install {name}) and apps (brew cask install {name}) to install. 
* **brew.sh**: Script to install Brew and all apps in the Brewfile file
* **macos.sh**: Script for better MacOS defaults
* **npminstall.sh**: Script to install common NPM utilities

## Get Started

1. Clone the project locally (or fork)

```bash
> git clone https://github.com/thedanfernandez/Automate-MacOS-Setup.git
```bash

2. Open Brewfile to add/edit/comment out CLI tools or apps. Use # to comment out or delete.


 ```bash
cask "postman"                              # REST-API tool
cask "skype"                                # Skype client
# cask "slack"                              # Slack client
cask "spectacle"                            # Windows like move / resize windows

````

You can run `brew bundle list` to confirm your Brewfile is configured correctly
```bash
> brew bundle list
```bash


3. Ensure any .sh files have execute permissions if needed

```bash
> chmod +x brew.sh
```

4. Open the terminal and run the scripts (ensure you put "./" as a prefix to the )

```bash
> ./brew.sh
```

Note: `npminstall.sh` expects NPM to be installed and must run as `sudo` if packages are installed globally (-g) flag.
```bash
> sudo ./npminstall.sh
```

## mas or the Mac App Store command line
Brew can work to *restore* Apps you purchased in the app store. Unfortunately it will fail if the app has not been installed at least once. More information: [Mac App Store GitHub project](https://github.com/mas-cli/mas). 

## .gitconfig and .bash_profile
Add / edit configuration from .gitconfig and .bash_profile and add to your `$HOME` directory

## Resources

* [Search Brew online](https://brew.sh)
