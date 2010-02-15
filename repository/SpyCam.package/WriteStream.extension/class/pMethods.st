*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = WriteStream ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #nextPut:;
		add: #nextPutAll:;
		add: #on:;
		add: #growTo:.
	^ s ].
	^ super pMethods