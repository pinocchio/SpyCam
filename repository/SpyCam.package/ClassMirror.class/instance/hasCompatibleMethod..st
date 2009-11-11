comparing
hasCompatibleMethod: aMethod
	^ methods allSatisfy: [:m| m compatibleWith: aMethod]