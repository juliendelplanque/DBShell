generating
generateConnectionOptionsOn: aStream.
	self
		safelyWriteArgumentNamed: '--host=' withValue: self host on: aStream;
		safelyWriteArgumentNamed: '--port=' withValue: self port on: aStream;
		safelyWriteArgumentNamed: '--username=' withValue: self username on: aStream