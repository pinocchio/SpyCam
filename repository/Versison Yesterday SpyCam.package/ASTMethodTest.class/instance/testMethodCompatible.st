as yet unclassified
testMethodCompatible
	"empty methods should be compatible"
	self assert: (m1 compatibleWith: m2).
	self assert: (m2 compatibleWith: m1).
	