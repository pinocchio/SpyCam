*SpyCam-Pinocchio
pMethods
	<preventExport>
	| s |
	self = Point ifTrue: [
		s := OrderedCollection new.
		s add: #x;
			add: #y;
			add: #x:;
			add: #x:y:;
			add: #y:.
		^ s
	].
	^ super pMethods