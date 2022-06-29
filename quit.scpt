# first get list of apps that are running
tell application "System Events"
    set alist to {}
    set processess to name of every process
    copy processess to end of alist
    repeat with i in alist
        say i
    end repeat
end tell