accessing
nil
	nilInstance ifNil: [nilInstance := PinocchioNil new].
	^ nilInstance