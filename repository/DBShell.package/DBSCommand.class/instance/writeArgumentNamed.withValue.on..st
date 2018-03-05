private
writeArgumentNamed: argumentName withValue: argumentValue on: aStream
	"Writes the #argumentName and the #argumentValue (with double quotes) on #aStream.
	"
		
	aStream
		<< argumentName.
	self writePositionalArgument: argumentValue on: aStream