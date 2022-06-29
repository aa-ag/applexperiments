# first get list of apps that are running
tell application "System Events"
    set alist to (name of every process where background only is false)
    log alist
end tell