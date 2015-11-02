# r2env
## Description
Launcher of radare environment in docker container
## Install
* `mkdir -p ~/.local/bin`
* `cp bin/* ~/.local/bin`
* `mkdir -p ~/.local/share/r2env`
* `cp share/r2env/* ~/.local/share/r2env`

Add .local/bin in PATH by editing `~/.zshrc` or `~/.bachrc` ... 
* `export PATH=$PATH:$HOME/.local/bin`

## Usage
Current directory will be mounted in the environment workspace folder `/home/radare2/workspace`
* To launch radare2 environment: `r2env`
* To update and launch radare2 environment: `r2env update`

