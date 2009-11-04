accessing
transformNext
	| aClass wrapped |
	aClass := todo removeFirst.
	wrapped := root ensureClass: aClass.
	done at: aClass put: wrapped.
	wrapped transform: self.