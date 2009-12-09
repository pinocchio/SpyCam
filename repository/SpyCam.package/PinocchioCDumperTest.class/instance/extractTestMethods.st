test-source-output
extractTestMethods
	| browser |
	browser := Browser new.
	browser setClass: self selector: nil.
	browser selectMessageCategoryNamed: 'test-method' asSymbol.
	^ browser messageList
	