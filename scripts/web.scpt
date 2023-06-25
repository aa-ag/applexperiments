display dialog "Search for " default answer ""

set userInput to the text returned of the result

open location "https://duckduckgo.com/?q=" & userInput & "+world&t=brave&ia=web"