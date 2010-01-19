convenience
checkBehaviorLayoutMembers: layout.
	layout size should >= 3.
	(layout at: 1) name should = #type.
	(layout at: 2) name should = #super.
	(layout at: 3) name should = #methods.
	