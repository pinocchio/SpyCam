accessing
lookupNamed: name
	"For now return nil for easier exporting"
	^ decls at: name ifAbsent: [ ^ nil]