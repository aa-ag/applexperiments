# if not already running
# open iTerm, Brave and VSC

tell application "iTerm"
    if it is running
        say "iTerm is already running"
    else
        activate
        do script "cd Documents/projects"
    end if
end tell

delay 0.01

tell application "Brave Browser"
    if it is running
        say "Brave Browser is also already running"
    else
        activate
        open location "https://github.com/login"
        open location "https://stackoverflow.com/users/login?ssrc=head&returnurl=https%3a%2f%2fstackoverflow.com%2f"
        open location "https://twitter.com/i/flow/login"
        open location "https://linkedin.com/"
    end if
end tell

delay 0.01

tell application "Visual Studio Code"
    if it is running
        say "Visual Studio Code is also already running"
    else
        activate
    end if
end tell