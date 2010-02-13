*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = SequenceableCollection ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #first;
		add: #second;
		add: #=;
		add: #reverse;
		add: #reversed;
		add: #joinUsing:;
		add: #hasEqualElements:;
		add: #last.
	^ s ].
	^ super pMethods