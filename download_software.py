import urllib

file_getter = urllib.URLopener()
file_getter.retrieve("https://download.sublimetext.com/Sublime%20Text%202.0.2.dmg", "~/software/sublime.dmg")
file_getter.retrieve("https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg", "~/software/chrome.dmg")
file_getter.retrieve("https://netstorage.unity3d.com/unity/5d30cf096e79/UnityDownloadAssistant-2017.1.1f1.dmg", "~/software/unity.dmg")
file_getter.retrieve("https://github.com/transmission/transmission-releases/raw/master/Transmission-2.92.dmg", "~/software/transmission.dmg")
file_getter.retrieve("https://get.videolan.org/vlc/2.2.6/macosx/vlc-2.2.6.dmg", "~/software/vlc.dmg")
file_getter.retrieve("https://github.com/resin-io/etcher/releases/download/v1.1.2/Etcher-1.1.2.dmg", "~/software/etcher.dmg")


