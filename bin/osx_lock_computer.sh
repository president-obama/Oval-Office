#!/bin/sh

sleep 0.5

if [[ "$(ioreg -c AppleSmartBattery | grep '"ExternalConnected" = Yes')" ]]; then
  # Plugged in: start screensaver.
  open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app
else
  # Battery power: go to lock menu.
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
fi
