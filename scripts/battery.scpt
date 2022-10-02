set isRunning to true
repeat until isRunning = false
    set batteryPercent to do shell script "pmset -g batt | grep -Eo '[0-9]{2,3}%'"
    if batteryPercent < 15 then
        say "[[ rate 150 ]] Please charge me. I'm low on battery." using "Daniel"
        display dialog batteryPercent & " charged."
        set isRunning to false
    else
        -- display dialog "we good"
        delay 60
    end if
end repeat