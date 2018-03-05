generating
generateOn: aStream
	"Write the string representing the command to provide to the shell
	 on #aStream. Must be overriden by leaves subclasses."
	(self executableDirectory isNotNil and: [ self executableDirectory exists not ])
		ifTrue: [ self error: 'The directory for the executable does not exists.' ].
	
	self executableDirectory ifNotNil: [ :fileRef |
		aStream << fileRef fullName; << $/ ].
		
	aStream
		<< self commandName;
		<< Character space.
	
	self generateArgumentsOn: aStream