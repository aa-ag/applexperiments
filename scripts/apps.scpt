tell application "System Events"
    set openApps to get name of every process whose background only is false
    repeat with a in openApps
        do shell script "echo " & a
    end repeat
end tell
