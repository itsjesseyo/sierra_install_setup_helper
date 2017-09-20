import os
import urllib

software_directory = os.path.expanduser('~/software')
if not os.path.exists(software_directory):
	os.mkdir(software_directory)

file_getter = urllib.URLopener()
file_getter.retrieve("https://download.sublimetext.com/Sublime%20Text%202.0.2.dmg", '%s/%s' % (software_directory, 'sublime.dmg'))
file_getter.retrieve("https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg", '%s/%s' % (software_directory, 'chrome.dmg'))
file_getter.retrieve("https://netstorage.unity3d.com/unity/5d30cf096e79/UnityDownloadAssistant-2017.1.1f1.dmg", '%s/%s' % (software_directory, 'unity.dmg'))
# file_getter.retrieve("https://github.com/transmission/transmission-releases/raw/master/Transmission-2.92.dmg", '%s/%s' % (software_directory, 'transmission.dmg'))
file_getter.retrieve("https://mirror.lstn.net/videolan/vlc/2.2.6/macosx/vlc-2.2.6.dmg", '%s/%s' % (software_directory, 'vlc.dmg'))
# file_getter.retrieve("https://github.com/resin-io/etcher/releases/download/v1.1.2/Etcher-1.1.2.dmg", '%s/%s' % (software_directory, 'etcher.dmg'))


