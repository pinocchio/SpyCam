visitor
createReturningMethodBodyFor: aMethod
	| body callec |
	body := aMethod statements.
	body last isReturnExpression ifFalse: [
		body add: ASTSelf new.
	] ifTrue: [
		body at: body size put: body last expression.
	].
	"Now wrap all in a callec"
	callec := PinocchioSend new
			receiver: (PinocchioInternalVariable named: 'AST_Callec_Class');
			message: #on: asPSymbol;
			arguments: (PinocchioArray with: (self createCallecBodyFor: aMethod)).
	
	^ PinocchioArray with: callec.