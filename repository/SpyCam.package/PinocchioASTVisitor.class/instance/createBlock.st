convenience
createBlock
	| block |
	block := PinocchioBlock new.
	self currentBlock ifNotNil: [
		block level: self currentBlock level + 1.
	].
	self currentBlock: block.
	^ block