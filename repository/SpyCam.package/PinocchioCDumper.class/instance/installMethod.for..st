convenience
installMethod: aPinocchioMethod for: aPinocchioClass 
	| closure |
	closure := PinocchioMethodClosure new
					code: aPinocchioMethod;
					pinocchioClass: aPinocchioClass;
					selector: aPinocchioMethod selector.
	"Explicitely avoid caching for method closures"
	closure accept: self.