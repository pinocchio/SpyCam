convenience
createBlock
	| block |
	block := PinocchioBlock new.
	self currentBlock ifNotNil: [
		block depth: self currentBlock depth + 1.
	].
	self currentBlock: block.
	^ block