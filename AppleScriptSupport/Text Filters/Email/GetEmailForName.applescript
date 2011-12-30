to FindInAddressBook(find_address)
	tell application "Address Book"
		
		set thePerson to every person whose name contains find_address
		if thePerson is [] then
			-- missing!
			display dialog "could not find person!"
			return find_address
		end if
		
		return value of first email of (first item of thePerson)
	end tell
end FindInAddressBook


to RunFromBBEdit(filterString)
-- filterString is a reference to the currently selected text. We need to get that as a string...
	FindInAddressBook(filterString as string)
end RunFromBBEdit

(*on run
	FindInAddressBook("Tino")
end run*)