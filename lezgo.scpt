tell application "Safari"
    activate
    tell application "System Events"
        tell process "Safari"
            set frontmost to true
        end tell
    end tell
end tell