visitor
visitPackage: aPinocchioPackage 
	Transcript show: aPinocchioPackage packageName; cr.
	self visit: aPinocchioPackage parent.
	self visitCollection: aPinocchioPackage members.
	"TODO"