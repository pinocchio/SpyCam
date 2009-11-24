visitor
multiArgFor: aPinocchioArray 
	^ aPinocchioArray 
		inject: aPinocchioArray size asString
		into: [ :values :element | 
			self assert: element uid size > 2.
			values , ', ' , element uid 
		]