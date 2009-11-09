accessing
lookup: anASTVariable
	| result |
	result :=  decls at: anASTVariable name ifAbsent:[
		self class lookup: anASTVariable.
	].
	result ifNotNil: [ ^ result].
	anASTVariable name first isUppercase ifTrue: [
		^ self declare: anASTVariable as: PinocchioClassReference new.
	].
	self error: ('Lookup failed. Undefined Variable: ''', 
						anASTVariable name, '''').