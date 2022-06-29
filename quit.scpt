# first get list of apps that are running
tell application "System Events"
    set alist to (name of every process where background only is false)
end tell

repeat with i in alist
    log quoted form of i
end repeat