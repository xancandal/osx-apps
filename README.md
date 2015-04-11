# Applications Developed for OSX

Simple OSX applications that let you do basic tasks like:

- Launch IPython Notebook in the browser. 
- IPython with QTconsole.
- Clean memory RAM in Mountain Lion.
- Automatically check the charge of a Magic Mouse´s battery.
- Monitoring CPU and memory RAM in the wallpaper with GeekTool.

A few additional packages will be required for full IPython functionality, i.e., Matplotlib, Numpy and Scipy with Apple's Accelerate Framework. And Mayavi, MathJax, etc. You can find the instructions [here](https://github.com/xancandal/guides/blob/master/Sci_Python.md).

## iPy[notebook]

**iPy[notebook]** lauches [IPython Notebook](http://ipython.org/notebook.html) which is a web-based interactive computational environment where you can combine code execution, text, mathematics, plots and rich media into a single document.

![iPy](http://ipython.org/_static/sloangrant/9_home_fperez_prof_grants_1207-sloan-ipython_proposal_fig_ipython-notebook-specgram.png)

### Requirements

To use it, you must install a few homebrew and pip modules.

If you haven´t done it yet. Install [Homebrew](http://brew.sh/). Full instructions [here](https://github.com/Homebrew/homebrew/wiki/Installation).

Install Python:

```
$ brew install python --universal --framework
```

Then these dependencies for IPython:

```
$ brew install pandoc
$ brew install node
$ brew install zmq
$ brew install zeromq
$ brew install readline
$ pip install pyzmq
$ pip install tornado
$ pip install jinja2
$ pip install mock
$ pip install pygments
$ pip install requests
$ pip install sphinx
```
And finally, IPython itself:

```
$ pip install ipython
```

Once you have nose installed ```pip install nose```, you can run IPython’s test suite using ``` iptest --all ```

### To create the OSX Application (Bundle)

Open Automator, and create a new Application and name it iPy[notebook]. Choose "Run AppleScript" and then enter:

```
on run {input, parameters}
	
	tell application "Terminal"
		do script "cd $PY_WORK_DIR && $PY_ENV_DIR/ipython notebook --pylab=inline"
	end tell
	
	return input
end run
```

Where ``$PY_WORK_DIR`` should be the working directory where notebook files are saved for iPy[notebook]. And ``$PY_ENV_DIR`` should be the Python environment path, for example ```export PY_ENV_DIR=/usr/local/bin```

The option ``--pylab=inline`` populate the interactive namespace from numpy and matplotlib, but the option ``--matplotlib=inline`` doesn´t.

## IPythonQt

**IPythonQt** is a very lightweight widget that largely feels like a terminal, but provides a number of enhancements only possible in a GUI, such as inline figures, proper multiline editing with syntax highlighting, graphical calltips, and much [more](http://ipython.org/ipython-doc/dev/interactive/qtconsole.html).

![IPythonQt](http://ipython.org/_static/screenshots/ipython-qtconsole-thumb.png)

### Requirements

To use it, you must install a few homebrew and pip modules.

```
$ brew install qt
$ brew install pyqt
$ brew install zmq
$ pip install pygments
$ pop install pyzmq
```

Alternatively you can try [Python Prompt Toolkit](https://github.com/jonathanslenders/python-prompt-toolkit) which is a Library for building powerful interactive command lines in Python. It ships with a nice interactive Python shell (called ptpython) built on top of the library.

### To create the OSX Application (Bundle)

Create a directory named **IPythonQt.app**. This will create a new bundle which is a special directory that contains the application and all the related files. Create the following tree inside the directory:

```
Contents
	MacOS
    Resources
```

Create a new file named ```IPythonQt``` with the following contents:

```
#!/usr/local/bin/Python

import os
os.chdir(os.getenv("HOME"))
executable = '/usr/local/bin/ipython'
arguments = [executable, 'qtconsole', '--pylab=inline']
os.environ["PYTHONPATH"]=os.getenv("PYTHONPATH", "")
os.execve(executable, arguments, os.environ)
```

Remmember to change the paths at the top of the file and in executable variable to the paths of your Python and IPython interpreter, respectively.

Make executable the file and copy it to MacOS subdirectory of IPythonQt package created in the previous step:

```
$ chmod +x IPythonQt
$ cp IPythonQt IPythonQt.app/Contents/MacOS
```

If you also want to add an icon, you have to copy an ```icon.icns``` file to the Resources subdirectory and add the following ```Info.plist`` file to the Contents subdirectory:

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>CFBundleIconFile</key>
    <string>icon</string>
</dict>
</plist>
```

At the end your package should look like this:

```
Contents
	MacOS
		IPythonQt
	Resources
		icon.icns
	Info.plist
```
       
## Purge Memory

**Purge Memory** will help to quickly speed up your computer. Rather than wasting time rebooting, just run Purge Memory and all inactive RAM instantly clears.

This program is ideal for those who work with demanding applications. Because of this, it is recommended you run Purge Memory before and after using a "heavy" application or game.

If you notice that your computer has become slow - just run RAM Cleaning and after 5 seconds, your computer will be as quick as if you had rebooted it.

The program runs in the background and after clear memory, is automatically closed! If the computer hangs for 1-5 seconds, it is clearing the memory, so don't worry. After it is finished, you can continue to work as you usually would.

The purge command forcibly flushes the disk and memory caches, having an effect similar to when you reboot a Mac. Though some say that purge only offers a placebo effect, it absolutely does work to send system memory from the “Inactive” category back to the freely available RAM, and in situations where you are running low on real memory, it can provide a speed boost.

Using purge is simple, type the following at a command prompt: ```purge```

Wait a minute or so for changes to take effect, the process is usually much faster on Macs with SSD drives.

![Purge_Memory](https://raw.githubusercontent.com/xancandal/osx-apps/master/Images/Screenshot%202014-11-16%2022.58.05.png)

### Requirements

If you haven´t done it yet. Install [Homebrew Cask](http://brew.sh/). Full instructions [here](https://github.com/caskroom/homebrew-cask).

Install **Growl**:

```
$ brew cask install growl
```

Go [here](http://developer.apple.com/downloads) to download and install the standalone Command Line Tools in Mountain Lion.

It only works in Mountain Lion but if you have a modern OSX you can find a lot of options in the App Store.

_NOTE_: I recommend you try the [Raaarr](http://enthusiastik.com/raaarr/) theme on Growl.

### To create the OSX Application (Bundle)

Open AppleScript Editor, and create a new Application with the name ```PurgeMemory.app``` with:

```
tell application "Growl"
	-- Make a list of all the notification types 
	-- that this script will ever send:
	set the allNotificationsList to ¬
		{"Purge Memory"}
	
	-- Make a list of the notifications 
	-- that will be enabled by default.      
	-- Those not enabled by default can be enabled later 
	-- in the 'Applications' tab of the growl prefpane.
	set the enabledNotificationsList to ¬
		{"Purge Memory"}
	
	-- Register our script with growl.
	-- You can optionally (as here) set a default icon 
	-- for this script's notifications.
	register as application ¬
		"Purge Memory" all notifications allNotificationsList ¬
		default notifications enabledNotificationsList icon of application "PurgeMemory.app"
end tell

try
	set RAMfree1 to do shell script "top -l 1 | grep PhysMem: | awk '{print $10}'"
end try

tell application "Growl"
	notify with name "Purge Memory" title "Memory Cleaning" description RAMfree1 & " of memory free available" application name "Purge Memory"
end tell

try
	set RAMfree1 to do shell script "purge"
end try

delay 30

try
	set RAMfree2 to do shell script "top -l 1 | grep PhysMem: | awk '{print $10}'"
end try

tell application "Growl"
	notify with name "Purge Memory" title "Memory Cleaned" description RAMfree2 & " of memory free available" application name "Purge Memory"
end tell
```

## MagicMouse

**MagicMouse** automatically check and sends notifications about the charge of a MagicMouse´s battery.

![MagicMouse](https://raw.githubusercontent.com/xancandal/osx-apps/master/Images/MagicMouse.png)

### Requirements

Install **GeekTool** with [Homebrew Cask](http://brew.sh/):

```
$ brew cask install geektool
```

Create a new Shell Geeklet in GeekTool. And edit the command parameter with:

```
`osascript /Applications/MagicMouse.app`
```

Also edit the ```Refresh every parameter``` with for example ```3,600 s```.

_NOTE_: I recommend you try the Bezel theme on Growl.

### To create the OSX Application (Bundle)

Open AppleScript Editor, and create a new Application with the name ```MagicMouse.app``` with:

```
tell application "Growl"
	-- Make a list of all the notification types 
	-- that this script will ever send:
	set the allNotificationsList to ¬
		{"Magic Mouse Battery"}
	
	-- Make a list of the notifications 
	-- that will be enabled by default.      
	-- Those not enabled by default can be enabled later 
	-- in the 'Applications' tab of the growl prefpane.
	set the enabledNotificationsList to ¬
		{"Magic Mouse Battery"}
	
	-- Register our script with growl.
	-- You can optionally (as here) set a default icon 
	-- for this script's notifications.
	register as application ¬
		"Magic Mouse Battery" all notifications allNotificationsList ¬
		default notifications enabledNotificationsList icon of application path to me
end tell

try
	set BPct to do shell script "ioreg -l | grep \"BatteryPercent\""
on error
	if BPct contains "}" then
		display dialog "Magic Mouse Fully Charged"
	else
		display dialog "Magic Mouse Not Connected"
		return
	end if
end try
set tNum to text -2 thru -1 of BPct
-- display dialog "Battery Charge at " & tNum & "%"

tell application "Growl"
	notify with name "Magic Mouse Battery" title "Magic Mouse Charge" description tNum & "% " & "remaining." application name "Magic Mouse Battery"
end tell
```

## CPU and RAM Monitors

Monitoring **CPU** and **Memory RAM** in the wallpaper with GeekTool.

![circle](https://raw.githubusercontent.com/xancandal/osx-apps/master/Images/Screenshot%202014-11-15%2022.11.21.png)

### Instructions

- Copy the folder CIRCLE to ~/Documents
- Chose Black or White theme by editing the file ~/Documents/CIRCLE/CONFIG
- Open the glet file placed inside the folder.

### Requirements

You must install GeekTool (see above) and imageMagick (using [Homebrew](http://brew.sh/)) first.

```
$ brew install imagemagick
```

Script based on [CIRCLE](http://www.macosxtips.co.uk/geeklets/collections/circle-6/).
