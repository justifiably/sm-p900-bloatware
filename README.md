# Samsung Galaxy Note Pro 12.2 bloatware cleanup

Samsung ships a lot of pre-installed applications that I never used and have no plans to use them in future. Since not every application could be disabled from `Application manager` I wrote a script to uninstall those applications using `adb` tool.

# Installation

You need to install `adb` before executing script

```
$ sudo apt-get update
$ sudo apt-get install adb
```

Check if your device is recognised by `adb`

```
$ adb devices
List of devices attached
520506e363fa1137 device
```

If you see empty list while device is connected to USB you probably need to enable `USB debugging` in `Developer options` menu. To enable `USB debugging` switch to owner user (if you have multiple users on your tablet) then go to `Settings` &rarr; `General` &rarr; `About device` and click 7 times on `Build number`. Now you should have access to `Settings` &rarr; `General` &rarr; `Developer options`.

Clone git repository and execute script

```
git clone https://github.com/tataranovich/sm-p900-bloatware.git
cd sm-p900-bloatware
./bloatware-cleanup.sh [UserId]
```

If you have multiple users then you need to know `UserId` of every user you want to cleanup. Device owner always have `UserId` = 0. Other users could be discovered with `adb` command:

```
adb shell pm list users
Users:
    UserInfo{0:Анна:13} running
    UserInfo{10:Андрей:10} running
    UserInfo{12:Guest:14} running
```

To cleanup second user you should run `./bloatware-cleanup.sh 10` and so on.
