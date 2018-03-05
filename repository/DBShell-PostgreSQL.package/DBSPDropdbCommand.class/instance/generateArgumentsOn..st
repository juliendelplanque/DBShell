generating
generateArgumentsOn: aStream
	self dbname ifNil: [ self error: 'dbname attribute is mandatory.' ].
	
	self writePositionalArgument: self dbname on: aStream