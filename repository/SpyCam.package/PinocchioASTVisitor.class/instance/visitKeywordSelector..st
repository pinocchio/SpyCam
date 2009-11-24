visitor
visitKeywordSelector: anASTKeywordSelector 
	"TODO maybe create specific class"
	^ PinocchioSymbol named: 
		(anASTKeywordSelector keywords inject: '' into: [ :string :each|
			string, ':', each
		])