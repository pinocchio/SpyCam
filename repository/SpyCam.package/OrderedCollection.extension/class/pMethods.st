*SpyCam-Pinocchio
pMethods
	<preventExport>
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
	^ s 