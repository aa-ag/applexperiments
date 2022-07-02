set pass to false
repeat until pass is true
    try
        do shell script "ping -c 1 www.google.com"
        set pass to true
        log "all good"
    on error
        log "trying..."
        delay 1
    end try
end repeat