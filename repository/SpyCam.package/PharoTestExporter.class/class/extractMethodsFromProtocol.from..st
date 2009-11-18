instance creation
extractMethodsFromProtocol: protocolName from: class
	| browser |
	browser := Browser new.
	browser setClass: class selector: nil.
	browser selectMessageCategoryNamed: protocolName asSymbol.
	^ browser messageList