# INSTALLING TOOLS
sudo apt-get update 
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install htop -y

# INSTALLING ZSH 
sudo apt-get update && sudo apt-get install zsh -y
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O – | sh

# INSTALLING OH-MY-ZSH AND MAKING ZSH DEFAULT SHELL
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh.git ~/.oh-my-zsh
cp ~/.zshrc ~/.zshrc.orig
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh

# CLONING AUTO SUGGESTIONS LIKE FISH
git clone git://github.com/tarruda/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone git://github.com/jimmijj/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting

# SECURELY COPYING ZSH FILE FROM X201i TO LOCAL
scp user@x.x.x.x:.zshrc ~/.zshrc
scp user@x.x.x.x:.vimrc ~/.vimrc
scp user@x.x.x.x:.vim ~/.vim
source ~/.zshrc

echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
echo 'change username on first line for zshrc to work properly.'
