accessing
nil
	nilInstance ifNil: [nilInstance := PNil new].
	^ nilInstance