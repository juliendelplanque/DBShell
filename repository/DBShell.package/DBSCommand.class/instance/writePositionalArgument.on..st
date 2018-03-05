private
writePositionalArgument: argumentValue on: aStream
	"Writes #argumentValue (with double quotes) on #aStream.
	"
		
	aStream
		<< $";
		<< argumentValue;
		<< $"