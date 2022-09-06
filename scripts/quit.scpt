# first get list of apps that are running
tell application "System Events"
    set alist to (name of every process where background only is false)
end tell

repeat with i in alist
    do shell script "Killall " & quoted form of i
end repeat