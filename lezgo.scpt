# if not already running
# open iTerm, Brave and VSC
tell application "iTerm"
    if it is running
        say "iTerm is already running"
    else
        activate
    end if
end tell

delay 0.01

tell application "Brave Browser"
    if it is running
        say "Brave Browser is also already running"
    else
        activate
        open location "https://duckduckgo.com/"
    end if
end tell

delay 0.01

tell application "Visual Studio Code"
    if it is running
        say "Visual Studio Code is also already running"
    else
        activate
    end if
end tell