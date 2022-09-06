tell application "System Events"
    set t to (time string of (current date)) & " It's bed time: hit OK and go to sleep..."
    display dialog t buttons {"Fine..."} with icon caution giving up after 10
    delay 3
    sleep
end tell