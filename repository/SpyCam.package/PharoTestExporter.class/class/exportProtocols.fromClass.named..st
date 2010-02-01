instance creation
exportProtocols: protocolNameArray fromClass: aClass named: testSuiteName
	| methods |
	methods := OrderedCollection new.
	protocolNameArray do: [ :protocolName|
		 methods addAll: (self extractMethodsFromProtocolNamed: protocolName fromClass: aClass).
	].
	^ PharoTestExporter new
		methods: methods;
		name: testSuiteName;
		exportClass: aClass.