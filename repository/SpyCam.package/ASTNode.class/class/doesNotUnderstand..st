as yet unclassified
doesNotUnderstand: aMessage
	| selector |
	(aMessage selector == #accept:) 
		ifFalse: [ ^ super doesNotUnderstand: aMessage].
	selector := ('accept', (self class name copyFrom: 4 to: (self class name size)), ':') asSymbol.
	(aMessage arguments at: 1) perform: selector with: (Array with: self).