exporting
transformSuperClassOf: aPinocchioClass.
	aPinocchioClass cls superclass 
		ifNil: [aPinocchioClass superclass: PNil nil]
		ifNotNil: [ aPinocchioClass superclass: (self transformClass: aPinocchioClass cls superclass).].
	"Could be that we got ProtoObject. In this case transformClass returns nil!"
	aPinocchioClass superclass ifNil: [aPinocchioClass superclass: PNil nil].
	self haltIf: aPinocchioClass superclass isNil.