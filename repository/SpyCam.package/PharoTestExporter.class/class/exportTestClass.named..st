instance creation
exportTestClass: aClass named: testSuiteName
	^ self exportProtocols: aClass organization categories 
		fromClass: aClass 
		named: testSuiteName.