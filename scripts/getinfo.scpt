tell application "System Events"
    tell process "Brave"
        set frontmost to true
            click menu item "About Brave" of menu "Brave" of menu bar 1
    end tell
end tell