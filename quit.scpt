# first get list of apps that are running
tell application "System Events"
    set alist to {}
    set processess to name of every process
    copy processess to end of alist
    log alist
end tell