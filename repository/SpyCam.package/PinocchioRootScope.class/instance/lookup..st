accessing
lookup: anASTVariable
	| result |
	result :=  decls at: anASTVariable name ifAbsent:[
		self class lookup: anASTVariable.
	].
	result ifNotNil: [ ^ result].
	anASTVariable name first isUppercase ifTrue: [
		^ self declare: anASTVariable 
					as:( PinocchioClassReference named: anASTVariable name)
	].
	self error: ('Lookup failed. Undefined Variable: ''', 
						anASTVariable name, '''').