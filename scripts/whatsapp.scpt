tell application "Whatsapp"
   if not running then
      run
      delay 3
   end if
   activate
   delay 3
   tell application "System Events" to tell application process "WhatsApp"
      tell front window of (first application process whose frontmost is true)
         get entire contents of menu bar
         -- click button 2
      end tell
   end tell
end tell