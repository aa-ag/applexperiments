tell application "System Events"
    set t to (time string of (current date)) & " It's bed time: hit OK and go to sleep..."
    display dialog t
    delay 3
    sleep
end tell