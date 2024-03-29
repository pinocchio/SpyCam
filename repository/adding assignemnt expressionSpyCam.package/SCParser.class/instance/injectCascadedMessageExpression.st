expression
injectCascadedMessageExpression
	^ self cascadedMessageExpression
		<= (self messageExpression &
			((';' asPEG omit: true) & 
				((self keywordMessageExpression
					| self binaryMessageExpression)
					<= self unaryMessageExpression)) plus);
					
		semantics: [:parts |
			ASTMessageCascadeExpression new
				receiver: (parts at: 1);
				cascades: (parts at: 2)
		]