accessing
add: anElement
	| result |
	result := self class new: self size +1.
	result last: anElement.
	^ result.