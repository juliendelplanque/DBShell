generating
generateArgumentsOn: aStream
	"Write the string representing the arguments provided to the shell command
	 on #aStream. Must be overriden by leaves subclasses."
	^ self subclassResponsibility