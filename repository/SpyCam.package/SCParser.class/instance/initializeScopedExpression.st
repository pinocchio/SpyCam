basic-block
initializeScopedExpression
	^  (('(' asPEG omit: true) & self expression <& (')' asPEG omit: true))