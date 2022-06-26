activate application "Messages"

tell application "System Events"
    tell process "Messages"
        set n to (count of chats)
        repeat n times
            click the menu item "Delete conversationÉ" of the menu "File" of the menu bar 1
            delay 1
            click the menu item "Delete" of the menu "File" of the menu bar 1
            delay 1
        end repeat
    end tell
end tell