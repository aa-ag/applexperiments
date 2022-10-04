tell application "System Events"
    set openApps to get name of every process whose background only is false
    repeat with a in openApps
        say a
    end repeat
end tell
