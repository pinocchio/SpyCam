accessing
addAll: anCollection 
	| index |
	index := 0.
	anCollection do: [:each | self at: (index := index + 1) put: each].