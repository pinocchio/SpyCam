tests
testObjectMetaclassExport
	| object metaclass |
	object := self exportClass: Object.
	object class should = PInternalClass.
	metaclass := object pclass.
	metaclass class should = PInternalMetaclass.
	