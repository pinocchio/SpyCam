expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression &
			((';' asPEG omit: true) & 
				((self keywordMessageExpression
					| self binaryMesageExpression)
					<= self unaryMessageExpression)) plus)