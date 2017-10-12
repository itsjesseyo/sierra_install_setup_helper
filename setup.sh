#!/bin/bash

#xcode - do first cause it requires feedback
xcode-select --install


###############################################
################# PREFERENCES #################
###############################################

#purdy terminal -- manually select this?
git clone git://github.com/stephenway/monokai.terminal.git
open monokai.terminal/Monokai.terminal
#terminals should always be monokai
defaults write com.apple.Terminal Default\ Window\ Settings Monokai
#show invisible files
defaults write com.apple.finder AppleShowAllFiles YES
#make trackpad nice
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag True
defaults write com.apple.AppleMultitouchTrackpad Clicking True
#make dock nice
defaults write com.apple.dock autohide True
defaults write com.apple.dock mineffect scale
defaults write com.apple.dock orientation left
#turn off spotlight bs
defaults write com.apple.Spotlight MENU_SPOTLIGHT_SUGGESTIONS False
defaults write com.apple.Spotlight PRESENTATIONS False
defaults write com.apple.Spotlight SPREADSHEETS False
defaults write com.apple.Spotlight MESSAGES False
defaults write com.apple.Spotlight CONTACT False
defaults write com.apple.Spotlight EVENT_TODO False
defaults write com.apple.Spotlight IMAGES False

#restart shit
killall Dock
killall Finder

#case insensitive
If ~./inputrc doesn't exist yet, first include the original /etc/inputrc so we don't override it
if [ ! -a ~/.inputrc ]; then echo '$include /etc/inputrc' > ~/.inputrc; fi
# Add option to ~/.inputrc to enable case-insensitive tab completion
echo 'set completion-ignore-case On' >> ~/.inputrc

#copy the bash_profile
mv bash_profile ~/.bash_profile

# copy open in sublime to ~/Library/Services/
mv Open\ In\ Sublime.workflow/ ~/Library/Services/Open\ In\ Sublime.workflow/



###############################################
################## SOFTWARE ###################
###############################################

python download_software.py

#assumes the bin.zip was just downlaoded
unzip ~/software/bin.zip
unzip ~/software/atom.zip
open ~/software/chrome.dmg
open ~/software/sublime.dmg
open ~/software/unity.dmg
open ~/software/vlc.dmg

echo 'gonna wait 20 seconds for dmg to open'
sleep 20
echo 'copying stuff to places'

mv bin/ ~/bin/
mv Atom.app/ /Applications/Atom.app/
cp -R /Volumes/Sublime\ Text\ 2/Sublime\ Text\ 2.app /Applications
cp -R /Volumes/Google\ Chrome/Google\ Chrome.app /Applications
cp -R /Volumes/vlc-2.2.6/VLC.app /Applications

#atom terminal app


###############################################
################## HOMEBREW ###################
###############################################

#install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#git
brew install git
#node
brew install node
#python
brew install pyenv
#python versions
pyenv install 2.7.13
pyenv install 3.6.2
pyenv global 3.6.2
#defaults packages - wanna generate a web dev one and a data science one 
pip install numpy
pip install matplotlib
#switched to pyenv-virtualenv
#https://github.com/pyenv/pyenv-virtualenv
brew install pyenv-virtualenv

source ~/.bash_profile

