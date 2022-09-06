set pass to false
repeat until pass is true
    try
        do shell script "ping -c 1 www.google.com"
        set pass to true
        log "all good"
    on error
        set wifi to do shell script "networksetup -getairportpower en0"
        if wifi ends with "Off" then
        log "wait, you aren't connected: lemme connect ya"
            do shell script "networksetup -setairportpower en1 on"
            delay 5
        else
            log "trying..."
        end if
        delay 1
    end try
end repeat