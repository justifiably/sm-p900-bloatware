#!/bin/bash

PKG=""
PKG="$PKG com.sec.android.app.sbrowser" # Samsung Internet Browser
PKG="$PKG com.cisco.webex.meetings" # Cisco Webex Meetings
PKG="$PKG com.sec.android.cloudagent.dropboxoobe" # Dropbox Samsung agent
PKG="$PKG com.dropbox.android" # Dropbox
PKG="$PKG com.netflix.mediaclient" # Netflix
PKG="$PKG com.nytimes.android" # NYTimes - Latest News
PKG="$PKG com.evernote" # Evernote
PKG="$PKG com.bloomberg.bbwa" # Bloomberg Businessweek+
PKG="$PKG flipboard.app" # Flipboard
PKG="$PKG com.peel.app" # Peel Smart Remote
PKG="$PKG RemotePC.AndroidViewer.samsung" # Remote PC
PKG="$PKG com.twitter.android" # Twitter
PKG="$PKG com.blurb.checkout" # BlurbCheckout
PKG="$PKG com.sec.android.emeeting.b2c.hancom.l" # e-Meeting
PKG="$PKG com.hancom.office.hword.viewer.hword_apk" # Hancom Office Hword 2014 Viewer
PKG="$PKG com.hancom.office.hshow.viewer.hshow_viewer_apk" # Hancom Office Hshow 2014 Viewer
PKG="$PKG com.hancom.office.hcell.viewer.hcell_viewer_apk" # Hancom Office Hcell 2014 Viewer
PKG="$PKG com.hancom.androidpc.viewer.launcher" # Hancom Office Viewer
PKG="$PKG com.hancom.androidpc.launcher.shared" # Hancom Office Shared
PKG="$PKG com.hancom.androidpc.hanupdater" # Hancom Office Update Manager
PKG="$PKG com.hancom.androidpc.appwidget" # Hancom Office Widget & PDF Viewer
PKG="$PKG com.sec.android.app.samsungapps" # Galaxy Apps
PKG="$PKG com.sec.android.widgetapp.samsungapps" # Galaxy Apps Widget

for i in $PKG
do
  echo -n "Uninstall $i: "
  adb shell pm uninstall -k --user 0 $i
done
