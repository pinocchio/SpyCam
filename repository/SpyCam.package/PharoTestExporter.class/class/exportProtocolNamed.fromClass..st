instance creation
exportProtocolNamed: protocolName fromClass: class
	^ PharoTestExporter new
		methods: (self extractMethodsFromProtocol: protocolName from: class);
		exportClass: class.