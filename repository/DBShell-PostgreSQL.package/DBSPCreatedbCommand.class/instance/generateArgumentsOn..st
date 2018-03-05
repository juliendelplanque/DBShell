generating
generateArgumentsOn: aStream
	self dbname ifNil: [ self error: 'dbname attribute is mandatory.' ].
	
	self generateConnectionOptionsOn: aStream.

	self generateOptionsOn: aStream.
	
	self writePositionalArgument: self dbname on: aStream.
	
	self description ifNotNil: [ :object | 
		aStream
			<< Character space.
		self writePositionalArgument: object on: aStream ]