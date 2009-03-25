as yet unclassified
privateMatch: input in: scope
	| result match |
	result := OrderedCollection new.
	match := child match: input in: scope.
	match ifNil: [ ^ match ].
	result add: match.
	^ self privateMatch: input in: scope on: result