convenience
createBlock: size
	| block |
	block := PinocchioBlock new: size.
	block depth: self scope depth - 1.
	^ block