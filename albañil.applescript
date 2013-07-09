repeat
  tell application "Google Chrome"
		
		set maxIndex to count tabs of (first window)
		
		set currentIndex to active tab index of (first window)
		
		set proposedIndex to currentIndex + 1
		
		if proposedIndex < 1 then set proposedIndex to maxIndex
		
		if proposedIndex > maxIndex then set proposedIndex to 1
		
		set (active tab index of (first window)) to proposedIndex
		
	end tell
	delay 10
end repeat
