*SpyCam-Pinocchio
pMethods
	<preventExport>
	self = OrderedCollection ifTrue: [
	| s |
	s := OrderedCollection new.
	s add: #add: ;
		add: #addLast: ;
		add: #makeRoomAtLast;
		add: #grow;
		add: #growSize;
		add: #setCollection: ;
		add: #size ;
		add: #reset.
	^ s ].
	^ super pMethods