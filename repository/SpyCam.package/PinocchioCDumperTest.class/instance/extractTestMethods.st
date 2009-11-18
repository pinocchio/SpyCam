test-source-output
extractTestMethods
	| browser |
	browser := Browser new.
	browser setClass: PinocchioCDumperTest selector: nil.
	browser selectMessageCategoryNamed: 'test-method' asSymbol.
	^ browser messageList
	