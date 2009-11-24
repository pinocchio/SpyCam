deprecated
generateAssertForResult: anObject 
	"generate an asser() type of thing. If the object is simple (Bool, Number)
	create a direct c assert for increased readability"
	
	({Boolean. UndefinedObject} select: [:t| anObject isKindOf: t]) ifNotEmpty: [
		^ self putAssert: 'result = ', (anObject asString capitalized).
	]. 	
	(anObject isKindOf: Integer) ifTrue: [
		^ self putAssert: '((Type_SmallInt)result)->value = ', (anObject asString).
	].  
	(anObject isKindOf: Character) ifTrue: [
		^ self putAssert: '((Type_Character)result)->value = ''', (anObject asString), ''''.
	]. 
	self halt. 