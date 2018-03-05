private
safelyWriteArgumentNamed: argumentName withValue: argumentValue on: aStream
	"Writes the #argumentName and the #argumentValue on #aStream.
	 If and only if #argumentValue is a String. Else, does nothing.
	 Adds a space at the end of the stream if somthing was written on it.
	"
	argumentValue isString
		ifFalse: [ ^ self ].
		
	self writeArgumentNamed: argumentName withValue: argumentValue on: aStream.
	
	aStream << Character space