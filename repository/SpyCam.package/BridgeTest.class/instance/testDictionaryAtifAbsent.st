test-basics
testDictionaryAtifAbsent
	| d result |
	d := Dictionary new.
	result := d at: #a ifAbsentPut: [ 3 ].
	result should = 3.
	result := d at: #a ifAbsentPut: [ 5 ].
	result should = 3.
	result := d at: #b ifAbsent: [ 10 ].
	result should = 10.
	result := d at: #b ifAbsent: [ 20 ].
	result should = 20.