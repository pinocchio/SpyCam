*SpyCam-Pinocchio
pMethods
	<preventExport>
	| s |
	self = PositionableStream ifTrue: [
		s := OrderedCollection new.
		s add: #on:;
			add: #position:;
			add: #position;
			add: #positionError;
			add: #atEnd;
			add: #reset.
		^ s
	].
	^ super pMethods