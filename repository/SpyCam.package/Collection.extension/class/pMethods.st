*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = Collection ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #inject:into:;
		add: #isEmpty;
		add: #hasReturnExpression;
		add: #anySatisfy:;
		add: #emptyCheck.
	^ s ].
	^ super pMethods