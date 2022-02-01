# My Windows

This is auto installation script for settings my OS like a boss.

# Features

* Install apps over [chocolatey](https://chocolatey.org/) ;)
* Setup VIM like keys in [auto hot key app](https://www.autohotkey.com/).
* Install libs for pyhon and node.js
* Install [b3 (i3 version of windows)](https://github.com/ritschmaste/b3)
* Install latest windows updates
* Setup custom shortcuts with [auto hot key app](https://www.autohotkey.com/)
* [Debloats stupid windows apps](https://github.com/Sycnex/Windows10Debloater)
* Setup git user and git email
* Setup default keyboard layouts
* Setup custom time format in taskbar
* Setup registery settings:
  * Disable shortcut Win+L (lock screen)
  * Auto hide taskbar
  * Show clock seconds
  * Show hidden files
  * Show file extensions
  * Disable notifications
  * Disable hot keys.
  * Make typing faster on keyboard
  * Disable Admin prompt for executing programs.

# How it works?

Take a look at `main.ps1` in which magic happens. In this file
you can have overview what happens on installation.

# Project structure

* `./powershell` All variables, functions, preferences that will be used in `main.ps1`.
* `./backup` Here is files created with `backup.ps1`.
* `./files` All the files that is used in installation process.
* `./preinstall` All pre-install scripts that will setup everything up.
* `./install` Install all applications.
* `./postinstall` All post-installation scripts that will configure apps after installation.

# How to configure project

First change all the variables in `./powershell/variables.ps1` to your specific needs.

Change list of applications that will install in all the scripts in `./install` directory.

# How to execute script

Open powershell in admin mode, then `cd` to root dir of this project, and then execute...

```powershell
.\main.ps1
```
