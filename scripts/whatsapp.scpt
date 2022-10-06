tell application "Whatsapp"
   if not running then
      run
      delay 0.25
   end if
   activate
   delay 0.25
   tell application "System Events"
      tell front window of (first application process whose frontmost is true)
         click button 2
      end tell
   end tell
end tell
