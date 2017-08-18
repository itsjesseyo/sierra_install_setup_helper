#!/bin/bash

#xcode
xcode-select --install

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# #make sure its all gravy
# brew doctor
# brew update

#git
brew install git

#node
brew install node

#python
brew install pyenv
brew install pyenv-virtualenv
pyenv install 2.7.7
pyenv install 3.6.2
pyenv global 2.7.7
brew install pyenv-virtualenvwrapper

#case insensitive
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

#purdy terminal
git clone git://github.com/stephenway/monokai.terminal.git
#need to mekae dem color show
touch .bash_profile
echo 'PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
echo 'CLICOLOR=1' >> ~/.bash_profile
echo 'LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx' >> ~/.bash_profile
echo 'PS1="\u@\w $ "' >> ~/.bash_profile
echo 'alias ls="ls -G"' >> ~/.bash_profile
echo 'PS1="\[\e[0;38;5;166m\]\u@\H\[\e[0m\] \w $ "' >> ~/.bash_profile

export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PS1="\u@\w $ "
alias ls="ls -G"
export PS1='\[\e[0;38;5;166m\]\u@\H\[\e[0m\] \w $ '

#sublime terminal app
mkdir ~/bin
export PATH=$PATH:~/bin
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

#will force virtualenv by default
# echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.bash_profile

source .bash_profile

