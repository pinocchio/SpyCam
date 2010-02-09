*SpyCam-Pinocchio
pClassMethods
	<preventExport>
	| s |
	self = PositionableStream ifTrue: [
		s := OrderedCollection new.
		s add: #on:.
	].
	^ super pMethods