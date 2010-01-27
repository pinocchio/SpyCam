convenience
checkBehaviorLayoutMembers: layout.
	layout size should >= 3.
	(layout at: 1) name should = #type.
	(layout at: 2) name should = #superclass.
	(layout at: 3) name should = #methods.
	