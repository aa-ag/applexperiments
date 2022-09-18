do shell script "touch /Users/aaronaguerrevere/Documents/projects/applexperiments/scripts/testfile.txt"

set testfile to open for access "testfile.txt" with write permission
write "hello world" to testfile
close access testfile