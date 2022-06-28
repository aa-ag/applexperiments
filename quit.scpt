# first get list of apps that are running
tell application "Finder"
    get the name of every process whose visible is true
end tell