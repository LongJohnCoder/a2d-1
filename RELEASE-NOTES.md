# Apple II DeskTop

Project page: https://github.com/inexorabletash/a2d/

Numbers like (#123) refer to items in the issue tracker.
https://github.com/inexorabletash/a2d/issues

## 1.2 - alpha

### DeskTop Enhancements

* Current day/time shown on right side of menu bar, if system has a clock. (#7, #142)
* Up to 13 volumes are shown on the desktop (was 10). (#20)
* Drag "unlimited" number of icons (was 20). (#18)
* Dragging files to same volume moves instead of copies; use Open-Apple to force copy. (#8)
* Menu bar menus are now drop-down in addition to pull-down. (#104)
* Add Special > Check Drive command to refresh a single drive. (#97)
* Reorganized/renamed several menu items. (#13)
* New file type icons: graphics, AppleWorks, relocatable, command, IIgs-specific, and DAs. (#105)
* Desktop icon shown for AppleTalk file shares. (#88)
* Improvements to several existing icon bitmaps. (#74)
* Icons for volumes positioned more predictably and sensibly. (#94)
* GS/OS filenames (supported by ProDOS 2.5) are shown with correct case. (#64)
* Tip about skipping copy to RAMCard is shown during startup. (#140)
* Holding Apple while double-clicking or using File>Open closes parent folder. (#9)
* Apple-` or Apple-Tab keypress cycles through open windows. (#143)
* Apple-Delete deletes selected files. (#150)

### Desk Accessory Enhancements

* Up to 12 Desk Accessories are shown in the menu (was 8). (#90)
* Desk accessory files can be executed directly. (#101)
* Desk accessory files with high bit in aux-type set are hidden in Apple menu. (#102)
* Show Text File DA: Keyboard support. Escape quits, arrows scroll. (#4)

### Additional Desk Accessories

* This Apple
  * Gives details about the computer, expanded memory, and what's in each slot. (#29)
* Control Panel
  * Allows editing the desktop pattern (#31), double-click speed (#2), insertion point blink speed. Also shows joystick calibration. (#72)
* Run Basic Here
  * Launch BASIC.SYSTEM with PREFIX set to the current window's pathname. (#42)
* Key Caps
  * Shows an on-screen keyboard map and indicates which key is pressed.
* Screen Dump
  * Dumps a screenshot to an ImageWriter II attached to a Super Serial Card in Slot 1. (#46)
* Eyes
  * Eyes that follow the mouse. (#53)
* Screen Saver
  * Homage to the classic After Dark "Flying Toasters" by Jack Eastman. More to come. (#27)

Note that several of the new Desk Accessories will not work with older versions
of Apple II DeskTop/MouseDesk, due to dependence on new APIs.

The former "Show Text File" DA is now part of automatic preview
functionality (see below).

### Automatic Preview

Text, Graphics and Font files with the correct file types can be
previewed without leaving DeskTop; select the file icon then select
File > Open, or double-click the file icon.

* Text files must be type TXT ($04).
* Graphics files must be type FOT ($08), or BIN ($06) with an aux type
    of $2000 or $4000 and 17 or 33 blocks (hi-res/double hi-res) or $5800
    and 3 blocks (Minipix a.k.a. Print Shop).
* Font files must be MGTK fonts with type FNT ($07).

To preview files of other types, you can copy the preview handlers
named `SHOW.TEXT.FILE`, `SHOW.IMAGE.FILE`, etc. from the `PREVIEW`
folder to the `DESK.ACC` folder, and restart DeskTop. To use them,
select the file, then select the appropriate command from the Apple
menu.

### Notable Fixes

* Dates 00-39 are treated as 2000-2039; dates 100-127 are treated as 2000-2027. (#15)
* File > Quit returns to ProDOS 8 selector, and /RAM is reattached. (#3)
* SELECTOR.LIST created if missing. (#92)
* Prevent crash after renaming volume. (#99)
* Prevent crash with more than two volumes on a SmartPort interface. (#45)
* Startup menu will include Slot 2. (#106)
* Correct odd behavior for file type $08. (#103)
* New Folder/Rename file dialog no longer truncated after IP. (#118)
* Correct rendering issues with desktop volume icons. (#117, #152)
* Prevent occasional rectangle drawn on desktop after window close. (#120)
* Empty directories can be copied/moved. (#121)
* Ctrl+Reset quits cleanly back to ProDOS (except buggy emulators). (#141)
* Desk Accessories:
  * Date: Read-only on systems with a clock. On systems without a clock, date is saved for next session. (#30, #39)
  * Calculator: don't mis-paint when moved offscreen and other fixes. (#33, #34)
  * Sort Directory: don't need to click before sorting. (#17)
* Hardware/Emulator Specific:
  * IIc Plus: don't spin slot 5 drives constantly. (Use Special > Check Drive) (#25)
  * Laser 128: avoid hangs checking SmartPort status. (Use Special > Check Drive) (#138)
  * IIgs: color DHR is re-enabled on exit. (#43)
  * Macintosh LC IIe Option Card: don't crash on startup. (#93)
  * Macintosh LC IIe Option Card: correct problems with interrupts affecting AppleTalk. (#129)
  * KEGS-based IIgs emulators no longer crash on startup. (#85)

### Known Issues

* Selector app is unmodified.
* Special > Disk Copy app is not substantially modified, and may suffer bugs fixed in DeskTop (e.g. SmartPort behavior)

# 1.1

Final release by Apple Computer. November 26, 1986.

See Jay Edwards' [MouseDesk/DeskTop History](https://mirrors.apple2.org.za/ground.icaen.uiowa.edu/MiscInfo/Misc/mousedesk.info)
for more version information.
