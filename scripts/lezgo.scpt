# if not already running
# open RoboForm, iTerm & Brave

set pass to false
repeat until pass is true
    try
        do shell script "ping -c 1 www.google.com"
        set pass to true
        log "all good"
    on error
        set wifi to do shell script "networksetup -getairportpower en0"
        if wifi ends with "Off" then
        log "wait, you aren't connected: lemme connect ya"
            do shell script "networksetup -setairportpower en1 on"
            delay 5
        else
            log "trying to connect..."
        end if
        delay 1
    end try
end repeat

-- wait three seconds
-- (allow system to connect to network)
delay 3

tell application "RoboForm"
    if it is running
        say "RoboForm is already running"
    else
        activate
    end if
end tell

delay 0.01

-- launch 4 websites once Brave is running
tell application "Brave Browser"
    if it is running
        say "Brave is already running"
    else
        activate
        open location "https://linkedin.com/"
        open location "https://twitter.com/i/flow/login"
        open location "https://stackoverflow.com/users/login?ssrc=head&returnurl=https%3a%2f%2fstackoverflow.com%2f"
        open location "https://github.com/login"
    end if
end tell

delay 0.01

-- Launch iTerm and show five latest projects
-- by last modified date
tell application "iTerm"
    if it is running
        say "iTerm is also already running"
    else
        activate
        
        delay 0.1
        
        tell current session of current window
            set cm to "cd Documents/projects/"
            write text cm

            delay 0.01
            set cm to "ls -tl | head -6 | tail -n +2 | awk '{print \"*\", $9, $6, $7, $8}'"
            write text cm

        end tell
        
    end if
end tell