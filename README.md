# LioranBoard 2.0 BETA

[![Twitter](https://img.shields.io/twitter/url/https/twitter.com/fold_left.svg?style=social&label=Follow%20%40LioranBoard)](https://twitter.com/LioranBoard)
[![Discord](https://img.shields.io/discord/699319482442711072.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/dXez8Zh)

##  Downloads

Windows
- [64bits Release](https://github.com/LioranWaters/Lioranboard2Update/raw/main/download/x64.zip)
- [32bits Release](https://github.com/LioranWaters/Lioranboard2Update/raw/main/download/x86.zip)

Linux
- `TBA`

Mac
- `Not planned`

##  Stream Deck Downloads

Windows
- `Included with the main package`

Android
- [Google Play Store](https://play.google.com/store/apps/details?id=lioranboard.ca.lioranboard.streamdeck)
- [APK installer](https://github.com/LioranWaters/Lioranboard2Update/raw/main/download/Lioranboard%202%20Official%20Stream%20Deck.apk)

iOS
- `Not planned`

###  Lioranboard 1 to 2 converter by Phat32
- [Lioranboard 1 JSON Converter](https://github.com/Phat32/Lioranboard-1-Json-to-2/)

### How to use

- Unzip whole package in a New Directory. 
- Run `LioranBoard 2.0.exe` (Lioranboard 1 is not compatible)
- Click Settings at the Bottom to edit preference, You can enable `Allow Stream Deck and Transmitter` if you wish to use either.DO NOT change the port unless you know what you're doing. (You will get a network permission request when you enable it, you need to allow it.)
- Link a Twitch Account by clicking the Twitch logo at the bottom under `Twitch Connections` (Same network permission if you haven't done previous step.)
- Link to OBS by click the OBS logo at the bottom under `OBS Connections`, Default values are the same default values of OBS websocket 4.9.1.(OBS websocket 5 is currently not fully supported.)
- Right click the Tray Icon to check for new updates


### How to Edit Deck

- Click the Big + button at the top to create a new deck and start being creative.
- Double Click or Right click a deck to bring up the Deck Editing window.
- Clicking in the grid will bring up a menu to create or paste a button
- Once a button is created you can right click to edit various settings(Double Click = Open command window, Alt+D.Click = Open Setting Window, Shift+D.Click = Open Appearance Window, Ctrl+D.Click = Open Trigger Window)
- The command window is what the button does when it is triggered. There are 100s of commands to choose from, explore and read up on what they do if you are not sure.
- To Trigger a button you can do it through the Stream Deck or setup a trigger for it in the Edit Triggers window(Twitch Trigger currently require the transmitter to be connected.)
- You can test Triggers in the Transmitter

###  Install Windows version on Linux

Lioranboard 2 does not currently have a Linux release but it can be run via Wine. Here's the basics of what you need to do for this method to work on Linux. 

##### Important Notes

1. All examples were creating using Fedora but by directly swapping ***apt*** for ***dnf*** where it appears below, this will also work for Ubuntu or other Debian based distributions.
2. All examples use `username` as the user and `.lioranboard` as the name of the wine prefix; change these as suits your needs where they appear below.

#### Prerequisites

Ensure that Wine is installed on your system. Most modern Linux distros will default to installing a 64 bit Wine unless you actively tell it to install a 32 bit architecture; always check your own PC to make sure which version of LioranBoard 2 you need before downloading.

```shell
[username@fedora ~]$ which wine
/usr/bin/wine
[username@fedora ~]$ wine --version
wine-7.2 (Staging) 
[username@fedora ~]$ 
```

For Fedora, install a 64 bit architecture Wine with the following command

```shell
sudo dnf install wine -y
```

Next, we'll create a wine prefix just for Lioranboard. 

```bash
WINEPREFIX="/home/username/.lioranboard/" winecfg
```

Adjust any settings, but in my experience the defaults are fine. I, personally, prefer setting the Windows version to Windows 7 during this step.

#### Installing Lioranboard

Now, download the proper Lioranboard archive for your arch from Github. I renamed mine to `lb_` plus the existing filename due merely to personal preference.

for 64 bit:

```bash
wget https://github.com/LioranWaters/Lioranboard2Update/raw/main/download/x64.zip lb_x64.zip
```

for 32 bit:

```bash
wget https://github.com/LioranWaters/Lioranboard2Update/raw/main/download/x86.zip lb_x86.zip
```

Open up the file you downloaded above in the archive manager of your choice and extract to the following location: 

```bash
/home/username/.lioranboard/drive_c/users/username/Desktop/Lioranboard
```

For ease of use, I create a launcher script named `lioranboard`and place it in the folder `/home/username/bin` containing the following:

```bash
#!/bin/bash
cd /home/username/.lioranboard/drive_c/users/username/Desktop/Lioranboard/
/usr/bin/wine "LioranBoard 2.0.exe"
```

Make that launcher script executable:

```bash
chmod +x /home/username/bin/lioranboard
```

Launch in terminal to run 

```
./lioranboard &
```

Lioranboard 2 is now installed and ready to run. See Extra Steps below for other ways to launch Lioranboard 2.

#### Extra Steps

##### Creating a Desktop launcher

For a desktop launcher here's a sample `LioranBoard.desktop` file. Create this in `/usr/shar/applications` on your machine.

```bash
[Desktop Entry]
Encoding=UTF-8
Version=1.0
Name=Lioranboard2
Icon=/home/username/.lioranboard/drive_c/users/username/Desktop/Lioranboard/lb.png
Exec=/home/username/bin/lioranboard
Terminal=false
Type=Application
Categories=Application;AudioVideo;
```

##### Adding Lioranboard to your Applications menu

The methods for setting this up in your applications menu are varied, but the pertinent data you need for doing so are:

- the path to the executable script
  -  `/home/username/bin/lioranboard`
- the working directory
  - `/home/username/.lioranboard/drive_c/users/username/Desktop/Lioranboard/`
- an icon of your choice
  - I used a simple LioranBoard butterfly

## Happy Testing!

Report any bugs on [Discord](https://discord.gg/dXez8Zh) in `#lb2-discussion-suggestions`
