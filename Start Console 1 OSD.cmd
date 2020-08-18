@echo off
:: A command prompt window is annoying to look at, so we're running the script minimized. 
:: The script basically restarts itself when it's not minimized. Scriptception!
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit

::If Console 1 On-Screen Display is running, we kill it. I've placed the taskkill here so it's easy to test the size and position.
taskkill /IM "Console 1 On-Screen Display (x64).exe"
:: Wait for it to die.
TIMEOUT 3

::Setting the variables of the Console 1 OSD
set size_x=1568
set size_y=864
set origin_x=248
set origin_y=1152

::Then we write the config file for Console 1's software.

echo { > "Console 1 On-Screen Display.txt"
echo    "AssetType": "SoftubePreferencesFile", >> "Console 1 On-Screen Display.txt"
echo    "FileFormatVersion": 1, >> "Console 1 On-Screen Display.txt"
echo    "Preferences": >> "Console 1 On-Screen Display.txt"
echo    { >> "Console 1 On-Screen Display.txt" 
echo        "ACCELERATED_KNOB_MODE": true, >> "Console 1 On-Screen Display.txt"
echo        "ALERT_USER_DAW_FEATURES": 1, >> "Console 1 On-Screen Display.txt"
echo        "APPLICATION_MODE": 0, >> "Console 1 On-Screen Display.txt"
echo        "AUTO_DISPLAY": false, >> "Console 1 On-Screen Display.txt"
echo        "AUTO_HIDE_TIME": 4000, >> "Console 1 On-Screen Display.txt"
echo        "AUTO_SOLO_TRACK_ON_ARRANGE": true, >> "Console 1 On-Screen Display.txt"
echo        "DAW_FEATURES_AVAILABLE": 0, >> "Console 1 On-Screen Display.txt"
echo        "DISPLAY_ON": true, >> "Console 1 On-Screen Display.txt"
echo        "FADER_UNIQUE_IDS": [], >> "Console 1 On-Screen Display.txt"
echo        "FFT_BLOCK_SIZE": 2048, >> "Console 1 On-Screen Display.txt"
echo        "FFT_LOCATION": 2, >> "Console 1 On-Screen Display.txt"
echo        "FFT_SMOOTH_SIZE": 0, >> "Console 1 On-Screen Display.txt"
echo        "FFT_TIME_AVG_ATTACK_FRACT": 2, >> "Console 1 On-Screen Display.txt"
echo        "FFT_TIME_AVG_RELEASE": -10, >> "Console 1 On-Screen Display.txt"
echo        "FFT_WINDOW_FUNCTION": 1, >> "Console 1 On-Screen Display.txt"
echo        "KNOB_MODE": 500, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_X": %size_x%, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_X_METERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_X_MINIMETERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_Y": %size_y%, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_Y_METERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "PRODUCT_SIZE_Y_MINIMETERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "SELECT_TRACK_ON_SOLO": false, >> "Console 1 On-Screen Display.txt"
echo        "SELECT_TRACK_ON_TOUCH": false, >> "Console 1 On-Screen Display.txt"
echo        "SELECT_VIEWMODES": [ 0, 1, 2, 3, 4 ], >> "Console 1 On-Screen Display.txt"
echo        "TCP_PORT_NR": 3500, >> "Console 1 On-Screen Display.txt"
echo        "VIEW_MODE": 0, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ALWAYS_ON_TOP": true, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_X": %origin_x%, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_X_METERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_X_MINIMETERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_Y": %origin_y%, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_Y_METERS": -1, >> "Console 1 On-Screen Display.txt"
echo        "WINDOW_ORIGIN_Y_MINIMETERS": -1 >> "Console 1 On-Screen Display.txt"
echo    } >> "Console 1 On-Screen Display.txt"
echo } >> "Console 1 On-Screen Display.txt"

::Now we start Softube Console 1 OSD software
start "" "C:\Program Files\Softube\Plug-Ins 64-bit\Console 1 On-Screen Display (x64).exe"

exit