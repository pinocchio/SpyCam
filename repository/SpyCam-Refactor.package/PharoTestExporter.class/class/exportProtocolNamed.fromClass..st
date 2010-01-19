instance creation
exportProtocolNamed: protocolName fromClass: class
	^ PharoTestExporter new
		methods: (self extractMethodsFromProtocolNamed: protocolName fromClass: class);
		exportClass: class.