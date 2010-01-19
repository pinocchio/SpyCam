exporting
ensurePackageFor: cls
	^ root ensurePath: ('-' split: cls pinocchioPackage).