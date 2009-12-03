convenience
clear
	stream := WriteStream on: (String new).
	visitedNodes := IdentitySet new.