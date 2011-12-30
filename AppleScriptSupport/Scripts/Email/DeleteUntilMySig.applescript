tell application "BBEdit"
	tell text 1 of text document 1
		set find_results to find "^-- " options {search mode:grep, starting at top:false, wrap around:true, backwards:false, case sensitive:false, match words:false, extend selection:true} with selecting match
		set theStart to selection's characterOffset
		set theEnd to (selection's length) - 4 -- (the return, 2 dashes and a space)
		set (characters theStart thru (theStart + theEnd)) to return & return
	end tell
end tell
