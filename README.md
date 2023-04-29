# dotfiles

**install and apply changes to current shell:** `source install.sh`

**install only:** `./install.sh`

**remove:** `./remove.sh`

## dconf-specific
dconf settings need to be exported manually:
- tilix: `dconf dump /com/gexperts/Tilix/ > dconf/tilix`
