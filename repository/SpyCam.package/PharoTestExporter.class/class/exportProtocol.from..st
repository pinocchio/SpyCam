instance creation
exportProtocol: protocolName from: class
	^ PharoTestExporter new
		methods: (self extractMethodsFromProtocol: protocolName from: class);
		exportClass: class.