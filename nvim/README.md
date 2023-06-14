## Linux

### Nvim
Create a symlink inside `~/.config` `ln -s <path_to_dotfiels/nvim> nvim`

Run startup script for packer `git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

If you want to use global clipboard :set clipboard+=unnamedplus

## Windows
Symlink/copy nvim to %LOCALAPPDATA%/nvim 
Might need to do some stuff with packer to start it up correctly, haven't tested it.
