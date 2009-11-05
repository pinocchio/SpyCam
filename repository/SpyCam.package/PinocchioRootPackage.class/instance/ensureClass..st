exporting
ensureClass: pharoClass
	| path package |
	path := '-' split: pharoClass pinocchioPackage.
	package := self.
	[ path size > 0 ] whileTrue: [ package := package ensurePackageNamed: path removeFirst].
	^ package ensurePharoClass: pharoClass