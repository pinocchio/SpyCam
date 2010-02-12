*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = SequenceableCollection ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #first;
		add: #second;
		add: #=;
		add: #hasEqualElements:;
		add: #last.
	^ s ].
	^ super pMethods