# Samsung Galaxy Note Pro 12.2 bloatware cleanup

Samsung ships a lot of pre-installed apps that I didn't use. Since not every application could be disabled from `Application manager` I wrote a script to uninstall those applications.

# Installation

Under the hood script is using `adb` so you need to install it first.

```
sudo apt-get update
sudo apt-get install adb
```

Check if your device is recognised by `adb`

```
adb devices
List of devices attached
520506e363fa1137 device
```

If you see empty list while device is connected to USB you probably need to enable `USB debugging` in `Developer options` menu. To enable USB debugging go to `Settings / General / About device` and click 7 times on `Build number`.

Clone git repository and execute script

```
git clone https://github.com/tataranovich/sm-p900-bloatware.git
cd sm-p900-bloatware
./sm-p900-bloatware-cleanup.sh

```

You should see something like this


```
Uninstall com.sec.android.app.sbrowser: Success
Uninstall com.cisco.webex.meetings: Success
Uninstall com.sec.android.cloudagent.dropboxoobe: Success
Uninstall com.dropbox.android: Success
Uninstall com.netflix.mediaclient: Success
Uninstall com.nytimes.android: Success
Uninstall com.evernote: Success
Uninstall com.bloomberg.bbwa: Success
Uninstall flipboard.app: Success
Uninstall com.peel.app: Success
Uninstall RemotePC.AndroidViewer.samsung: Success
Uninstall com.twitter.android: Success
Uninstall com.blurb.checkout: Success
Uninstall com.sec.android.emeeting.b2c.hancom.l: Success
Uninstall com.hancom.office.hword.viewer.hword_apk: Success
Uninstall com.hancom.office.hshow.viewer.hshow_viewer_apk: Success
Uninstall com.hancom.office.hcell.viewer.hcell_viewer_apk: Success
Uninstall com.hancom.androidpc.viewer.launcher: Success
Uninstall com.hancom.androidpc.launcher.shared: Success
Uninstall com.hancom.androidpc.hanupdater: Success
Uninstall com.hancom.androidpc.appwidget: Success
```
