activate application "Messages"

tell application "System Events"
    tell process "Messages"
        set n to (count of chats)
        repeat n times
            click menu item "Delete conversationÉ" of menu "File" of menu bar 1
        end repeat
    end tell
end tell