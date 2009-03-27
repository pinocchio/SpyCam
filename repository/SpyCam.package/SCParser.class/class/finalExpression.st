basic-block
finalExpression
	^ self expression & ('.' asPEG optional omit: true)