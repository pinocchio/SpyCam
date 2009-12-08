instance creation
exportProtocols: protocolNameArray fromClass: aClass
	| methods |
	methods := OrderedCollection new.
	protocolNameArray do: [ :protocolName|
		 methods addAll: (self extractMethodsFromProtocolNamed: protocolName fromClass: aClass).
	].
	^ PharoTestExporter new
		methods: methods;
		exportClass: aClass.