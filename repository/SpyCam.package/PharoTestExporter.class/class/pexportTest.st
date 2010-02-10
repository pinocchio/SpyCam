as yet unclassified
pexportTest
	| exporter |
	exporter := PharoTestExporter new.
	[exporter export: self tests] fork.
	'Exporting Pharo' 
		displayProgressAt: Display center
		from: 0 to: 1000
		during: [:bar ||p|
			p := exporter progress.
			[p <= 0.990] whileTrue:[
				bar value: ((exporter progress min: 1) * 1000) rounded.
				(Delay forMilliseconds: 2) wait.
				p := exporter progress.
			]
		]