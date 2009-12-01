convenience
createBlock: size
	| block |
	block := PinocchioBlock new: size.
	self currentBlock ifNotNil: [
		block depth: self currentBlock depth + 1.
	].
	self currentBlock: block.
	^ block