/proc/getviewsize(view)
	var/viewX
	var/viewY
	if(isnum(view))
		var/totalviewrange = 1 + 2 * view
		viewX = totalviewrange
		viewY = totalviewrange
	else
		var/list/viewrangelist = splittext(view,"x")
		viewX = text2num(viewrangelist[1])
		viewY = text2num(viewrangelist[2])
	return list(viewX, viewY)

// Used to get `atom/O as obj|mob|turf in view()` to match against strings containing apostrophes immediately after substrings that match to other objects. Somehow. - Ater
/proc/_validate_atom(atom/A)
	return view()