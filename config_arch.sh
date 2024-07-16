# This script is used to auto configure all the dotfiles for a new computer.

echo -e "Welcome!"
echo -e "This is the \033[35;1mConfig Arch\033[0m script."
echo -e "Ready to setup and configure all your dotfiles for your \033[34;1mArch\033[0m."

# Backup folder.

DIR_backup="$HOME/dotfiles/backup_arch"
if [ -d $DIR_backup ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking 'backup' directory..."
else
  echo -e "[ \033[31;1mNOT FOUND\033[m ] Checking 'backup' directory..."
  echo -e "Making 'backup' directory now."
  mkdir "$HOME/dotfiles/backup_arch"
fi
DIR_current_time="$(date)"
echo -e "The current time is $DIR_current_time, making a backup directory."
mkdir "$HOME/dotfiles/backup_arch/$DIR_current_time"
echo -e "[ \033[32;1mDONE\033[0m ] The 'backup' directory is created."

# Check original dotfiles.

# Check '.zshrc'
FILE_zshrc="$HOME/.zshrc"
if [ -f $FILE_zshrc ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.zshrc' file..."
  echo -e "Backing up current '.zshrc' file..."
  cp $FILE_zshrc "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.zshrc' file..."
fi
echo -e "Ready to configure with new '.zshrc' file."
unlink $FILE_zshrc
rm $FILE_zshrc
ln -s $HOME/dotfiles/dot_arch/zshrc $FILE_zshrc
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.zprofile'
FILE_zprofile="$HOME/.zprofile"
if [ -f $FILE_zprofile ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.zprofile' file..."
  echo -e "Backing up current '.zprofile' file..."
  cp $FILE_zprofile "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.zprofile' file..."
fi
echo -e "Ready to configure with new '.zprofile' file."
unlink $FILE_zprofile
rm $FILE_zprofile
ln -s $HOME/dotfiles/dot_arch/zprofile $FILE_zprofile
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/hypr'
DIR_hypr="$HOME/.config/hypr"
if [ -d $DIR_hypr ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/hypr' directory..."
  echo -e "Backing up current '.config/hypr' directory..."
  cp -r $DIR_hypr "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/hypr' directory..."
fi
echo -e "Ready to configure with new '.config/hypr' directory."
unlink $DIR_hypr
rm $DIR_hypr
ln -s $HOME/dotfiles/dot_arch/config/hypr $DIR_hypr
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/kitty'
# DIR_kitty="$HOME/.config/kitty"
# echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/kitty' directory..."
#   echo -e "Backing up current '.config/kitty' directory..."
#   cp -r $DIR_kitty "$HOME/dotfiles/backup_arch/$DIR_current_time"
#   echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
# else
#   echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/kitty' directory..."
# fi
# echo -e "Ready to configure with new '.config/kitty' directory."
# unlink $DIR_kitty
# rm $DIR_kitty
# ln -s $HOME/dotfiles/dot_arch/config/kitty $DIR_kitty
# echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/mako'
DIR_mako="$HOME/.config/mako"
if [ -d $DIR_mako ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/mako' directory..."
  echo -e "Backing up current '.config/mako' directory..."
  cp -r $DIR_mako "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/mako' directory..."
fi
echo -e "Ready to configure with new '.config/mako' directory."
unlink $DIR_mako
rm $DIR_mako
ln -s $HOME/dotfiles/dot_arch/config/mako $DIR_mako
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/nvim'
DIR_nvim="$HOME/.config/nvim"
if [ -d $DIR_nvim ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/nvim' directory..."
  echo -e "Backing up current '.config/nvim' directory..."
  cp -r $DIR_nvim "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/nvim' directory..."
fi
echo -e "Ready to configure with new '.config/nvim' directory."
unlink $DIR_nvim
rm $DIR_nvim
ln -s $HOME/dotfiles/dot_arch/config/nvim $DIR_nvim
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/tofi'
DIR_tofi="$HOME/.config/tofi"
if [ -d $DIR_tofi ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/tofi' directory..."
  echo -e "Backing up current '.config/tofi' directory..."
  cp -r $DIR_tofi "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/tofi' directory..."
fi
echo -e "Ready to configure with new '.config/tofi' directory."
unlink $DIR_tofi
rm $DIR_tofi
ln -s $HOME/dotfiles/dot_arch/config/tofi $DIR_tofi
echo -e "[ \033[32;1mDONE\033[0m ] Configured."

# Check '.config/waybar'
DIR_waybar="$HOME/.config/waybar"
if [ -d $DIR_waybar ]; then
  echo -e "[ \033[32;1mFOUND\033[0m ] Checking '.config/waybar' directory..."
  echo -e "Backing up current '.config/waybar' directory..."
  cp -r $DIR_waybar "$HOME/dotfiles/backup_arch/$DIR_current_time"
  echo -e "[ \033[32;1mDONE\033[0m ] Backed up."
else
  echo -e "[ \033[31;1mNOT FOUND\033[0m ] Checking '.config/waybar' directory..."
fi
echo -e "Ready to configure with new '.config/waybar' directory."
unlink $DIR_waybar
rm $DIR_waybar
ln -s $HOME/dotfiles/dot_arch/config/waybar $DIR_waybar
echo -e "[ \033[32;1mDONE\033[0m ] Configured."
