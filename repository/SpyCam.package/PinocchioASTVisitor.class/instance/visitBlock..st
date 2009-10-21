visitor
visitBlock: aBlock
	| parameterCount localCount bodySize values |
	(aBlock parameters isNil or: [ aBlock parameters size = 0])
		ifTrue: [parameterCount := 0]
		ifFalse: [parameterCount := aBlock parameters size].
	(aBlock temporaries isNil or: [ aBlock temporaries size = 0])
		ifTrue: [localCount := 0]
		ifFalse: [localCount := aBlock temporaries size].
	(aBlock statements isNil or: [ aBlock statements size = 0])
		ifTrue: [bodySize := 0. values := #()]
		ifFalse: [
			bodySize := aBlock statements size.
			values := aBlock statements accept: self].
	^PinocchioBlock new
		paramCount: (PinocchioConstant new
			constant: (PinocchioSmallInt new int: parameterCount));
		localCount: (PinocchioConstant new
			constant: (PinocchioSmallInt new int: localCount));
		body: (PinocchioArray new 
			size: (PinocchioConstant new
				constant: (PinocchioSmallInt new int: bodySize));
			values: values)