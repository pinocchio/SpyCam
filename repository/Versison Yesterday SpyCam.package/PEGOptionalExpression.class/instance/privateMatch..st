matching
privateMatch: input
	^ (child match: input) ifNil: [ true ]