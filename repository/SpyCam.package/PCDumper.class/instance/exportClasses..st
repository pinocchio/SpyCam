exporting
exportClasses: classes
	classes do: [ :pClass|
		self exportClass: pClass.
	].