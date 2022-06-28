# first get list of apps that are running
tell application "System Events"
    set processess to name of every process
    log processess
end tell