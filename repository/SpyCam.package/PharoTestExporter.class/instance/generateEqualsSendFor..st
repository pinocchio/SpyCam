exporting
generateEqualsSendFor: anObject
	| ast |
	(anObject isKindOf: String) ifTrue: [
		ast := PinocchioString new string: anObject.
	].
	
	ast ifNil: [ self error: 'Unknown type given']. 
	cdumper stream: outStream.
	cdumper visit: ast.
	outStream nextPutAll: 'result = Eval_Send1(result, SMB_equals_,';
		nextPutAll: ast uid;
		nextPutAll: ');'; cr.
	self assertEmptyStack.