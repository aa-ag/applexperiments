# if not already running
# open Notes, and the Calculator
tell application "Notes"
    if it is running
        say "Notes is already running"
    else
        activate
    end if
end tell
