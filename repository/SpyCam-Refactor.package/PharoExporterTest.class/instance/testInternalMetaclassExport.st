tests
testInternalMetaclassExport
	| classes exported |
	classes := OrderedCollection new.
	classes add: Object; 
		add: Class;
		add: Metaclass; 
		add: Behavior;
		add: False; 
		add: True;
		add: String;
		add: Symbol;
		add: Character;
		add: SmallInteger.
		
	classes do: [ :each|
		"All Internal Objects have an internal class and an internal metaclass"
		exported := self exportClass: each.
		exported class should = PInternalClass.
		exported sclass should = each.
		exported pclass class should = PInternalMetaclass.
		exported pclass sclass should = each.
		exported pclass smetaclass should = each class.
	]