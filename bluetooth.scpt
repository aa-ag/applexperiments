tell application "System Events"
    tell process "ControlCenter"
        set MenuBarBluetoothButton to menu bar item "Bluetooth" of menu bar 1
        click MenuBarBluetoothButton
        delay 1
        set Toggle to checkbox "Bluetooth" of group 1 of window "Control Center"
        click Toggle
    end tell
end tell
