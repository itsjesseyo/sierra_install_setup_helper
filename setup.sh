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

#case insensitive
# If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

#purdy terminal
git clone git://github.com/stephenway/monokai.terminal.git
#need to make dem color show
touch ~/.bash_profile
# echo 'PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
# echo '# colors' >> ~/.bash_profile
# echo 'CLICOLOR=1' >> ~/.bash_profile
# echo 'LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx' >> ~/.bash_profile
# echo 'PS1="\u@\w $ "' >> ~/.bash_profile
# echo 'alias ls="ls -G"' >> ~/.bash_profile
# echo 'PS1="\[\e[0;38;5;166m\]\u@\H\[\e[0m\] \w $ "' >> ~/.bash_profile

echo 'PATH=/usr/local/bin:$PATH' >> ~/.bash_profile
echo '# colors' >> ~/.bash_profile
echo 'export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "1' >> ~/.bash_profile
echo 'CLICOLOR=1' >> ~/.bash_profile
echo 'LSCOLORS=ExFxBxDxCxegedabagacad' >> ~/.bash_profile
echo 'alias ls="ls -G"' >> ~/.bash_profile

echo '# flask' >> ~/.bash_profile
echo 'export FLASK_APP=app.py' >> ~/.bash_profile
echo 'export FLASK_DEBUG=1' >> ~/.bash_profile

echo '# android' >> ~/.bash_profile
echo "alias connect_android='adb connect 10.0.1.140:5555'" >> ~/.bash_profile

source ~/.bash_profile

#sublime terminal app
mkdir ~/bin
echo 'export PATH=$PATH:~/bin' >> ~/.bash_profile
export PATH=$PATH:~/bin
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

#python
brew install pyenv
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.bash_profile
exec "$SHELL"
source ~/.bash_profile

pyenv install 2.7.13
pyenv install 3.6.2
pyenv global 2.7.13

brew install pyenv-virtualenvwrapper
echo 'pyenv virtualenvwrapper' >> ~/.bash_profile

source ~/.bash_profile

