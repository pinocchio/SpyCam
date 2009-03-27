basic-block
scopedExpression
	^  (('(' asPEG omit: true) & self expression <& (')' asPEG omit: true))