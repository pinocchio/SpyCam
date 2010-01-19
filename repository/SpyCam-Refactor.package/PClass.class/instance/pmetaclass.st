exporting
pmetaclass
	pmetaclass ifNil: [ pmetaclass := self createPMetaclass].
	^ pmetaclass