# if not already running
# open iTerm, and Brave
tell application "iTerm"
    if it is running
        say "iTerm is already running"
    else
        activate
    end if
end tell

delay 1

tell application "Brave Browser"
    if it is running
        say "Brave Browser is also already running"
    else
        activate
    end if
end tell

