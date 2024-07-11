# This script is used to auto configure all the dotfiles for a new computer.

echo -e "Welcome!"
echo -e "This is the \033[35;1mConfig Darwin\033[0m script."
echo -e "Ready to setup and configure all your dotfiles for your \033[34;1mmacOS\033[0m."

# Backup folder.

DIR_backup="$HOME/dotfiles/backup_darwin"
if [ -d $DIR_backup ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking 'backup' directory..."
else
  echo -e "[ \033[31;1mNOT FOUND\033[m ] Checking 'backup' directory..."
  echo -e "Making 'backup' directory now."
  mkdir "$HOME/dotfiles/backup_darwin"
fi
DIR_current_time="$(date)"
echo -e "The current time is $DIR_current_time, making a backup directory."
mkdir "$HOME/dotfiles/backup_darwin/$DIR_current_time"
echo -e "[ \033[32;1mDONE\033[0m ] The 'backup' directory is created."

# Check original dotfiles.

# Check '.zshrc'
FILE_zshrc="$HOME/.zshrc"
if [ -f $FILE_zshrc ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.zshrc' file..."
  echo -e "Backing up current '.zshrc' file..."
  cp $FILE_zshrc "$HOME/dotfiles/backup_darwin/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.zshrc' file..."
fi
echo -e "Ready to configure with new '.zshrc' file."
rm -rf $FILE_zshrc
ln -s $HOME/dotfiles/bacdot_darwin/zshrc $FILE_zshrc
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.zprofile'
FILE_zprofile="$HOME/.zprofile"
if [ -f $FILE_zprofile ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.zprofile' file..."
  echo -e "Backing up current '.zprofile' file..."
  cp $FILE_zprofile "$HOME/dotfiles/backup_darwin/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.zprofile' file..."
fi
echo -e "Ready to configure with new '.zprofile' file."
rm -rf $FILE_zprofile
ln -s $HOME/dotfiles/bacdot_darwin/zprofile $FILE_zprofile
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/nvim'
DIR_nvim="$HOME/.config/nvim"
if [ -d $DIR_nvim ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/nvim' directory..."
  echo -e "Backing up current '.config/nvim' directory..."
  cp -r $DIR_nvim "$HOME/dotfiles/backup_darwin/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/nvim' directory..."
fi
echo -e "Ready to configure with new '.config/nvim' directory."
rm -rf $DIR_nvim
ln -s $HOME/dotfiles/bacdot_darwin/config/nvim $DIR_nvim
echo -e "[ \033[32;1mDONE\033[0m ] Configured."
