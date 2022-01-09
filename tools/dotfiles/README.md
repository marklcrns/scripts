# Dotfiles Manager Scripts

Dotfiles manager to automate dotfiles syncing and backing up.

## Scripts

- `dotdist` -- Distribute all repository dotfiles into local or specified
  destination directory. See `dotdist -h` for options.
- `dotupdate` -- Update dotfiles repository of all local or specified dotfiles
  directory. See `dotupdate -h` for options.
- `dotbackup` -- Backup all local dotfiles into back up directory
  `~/.dotfiles.bak`. See `dotbackup -h` for options.
- `dotclearbak` -- Clean and limit dotfiles backup directory of specified
  amount (deletes oldest backup when above limit). See `dotclearbak -h` for
  options.

### Dotfilesrc

`.dotfilesrc` should be installed in the `$HOME` directory by default.

Sample `.dotfilesrc` that backs up to and distribute from `$HOME/.dotfiles`.

```bash
# Back up directory before distributing dotfiles from $DOTFILES_REPO.
export DOTFILES_BACKUP_DIR="${HOME}/.dotfiles.bak"
# Back up directory back up limit. Deletes oldest back up over the limit.
export DOTFILES_BACKUP_LIMIT=10
# Root directory to back up dotfiles from and distribute into.
export DOTFILES_LOCAL="${HOME}"
# Root directory to store backed up dotfiles in and distribute from.
export DOTFILES_REPO="${HOME}/.dotfiles"

# Bash array list of local dotfiles to backup and distribute.
DOTFILES_LIST=(
  "${DOTFILES_LOCAL}/.dotfilesrc"
  "${DOTFILES_LOCAL}/.bash_aliases"
  "${DOTFILES_LOCAL}/.bash_profile"
  "${DOTFILES_LOCAL}/.bashrc"
  "${DOTFILES_LOCAL}/.config/ranger/"
  "${DOTFILES_LOCAL}/.ez-install.d/"
  "${DOTFILES_LOCAL}/.ez-installrc"
  "${DOTFILES_LOCAL}/.gitconfig"
  "${DOTFILES_LOCAL}/.gitconfig.d/gitalias.txt"
  "${DOTFILES_LOCAL}/.gitignore_global"
  "${DOTFILES_LOCAL}/.profile"
  "${DOTFILES_LOCAL}/.tmux.conf"
  "${DOTFILES_LOCAL}/.zprofile"
  "${DOTFILES_LOCAL}/.zshenv"
  "${DOTFILES_LOCAL}/.zshrc"
  "${DOTFILES_LOCAL}/bin/"
)

# When backing up a whole directory, ignoring certain files is an option
DOTFILES_IGNORE_LIST=(
  "${DOTFILES_LOCAL}/bin/pandoc"
)
```
