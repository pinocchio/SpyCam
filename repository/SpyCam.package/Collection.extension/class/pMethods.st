*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = Collection ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #inject:into:;
		add: #isEmpty;
		add: #emptyCheck.
	^ s ].
	^ super pMethods