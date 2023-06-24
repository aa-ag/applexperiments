# if not already running
# open RoboForm

set MyPassWord to "123"

tell application "RoboForm"
    activate
end tell

tell application "System Events" to tell application process "Roboform"
    delay 1
    keystroke MyPassWord
end tell