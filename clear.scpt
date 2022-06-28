(* tell application "iTerm"
    tell current session of current window
        set cm to "rm -r ~/Library/Messages/chat.*"
        write text cm
    end tell
end tell *)

tell application "Whatsapp"
    tell current session of current window
        click settings
    end tell
end tell