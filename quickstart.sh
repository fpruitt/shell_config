!$/bin/bash
echo "----Cloning fpruitt/shell_config.git repo..."
cd /tmp
git clone https://github.com/fpruitt/shell_config.git
cd shell_config
echo "----Installing zsh if it is not already installed..."
sudo apt-get install zsh
echo '$(which zsh' >> /etc/shells
echo "----Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "----Copying fpruit.zsh-theme into place..."
cp fpruitt.zsh-theme ~/.oh-my-zsh/themes/
echo "----Preprending .zshrc with contents from repo"
echo "$(cat .zshrc)" > ~/.zshrc
echo "----copying online checker tool into .zsh..."
mkdir ~/.zsh
cp .zsh/* ~/.zsh
echo "Done. \nNow make a cron job for the online-check tool using `env EDITOR=vim crontab -e` and pasting in `* * * * * ~/.zsh/online-check.sh`
