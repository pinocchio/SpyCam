convenience
installMethod: aPinocchioMethod
	| closure |
	self currentClass ifNil: [ ^ aPinocchioMethod ].
	closure := PinocchioMethodClosure new
					code: aPinocchioMethod;
					pinocchioClass: self currentClass;
					selector: aPinocchioMethod selector.
	"Explicitely avoid caching for method closures"
	closure accept: self.