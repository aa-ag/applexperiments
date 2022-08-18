tell application "System Events"
    tell process "ControlCenter"
        set BluetoothButton to menu bar item "Bluetooth" of menu bar 1
        click BluetoothButton
        delay 1
        say "there you go!"
    end tell
end tell
