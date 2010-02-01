*SpyCam-Pinocchio
pexportTest: fileName named: testSuiteName
	(PharoTestExporter exportTestClass: self named: testSuiteName) 
		export: fileName