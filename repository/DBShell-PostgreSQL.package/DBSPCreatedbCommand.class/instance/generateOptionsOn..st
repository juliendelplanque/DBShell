generating
generateOptionsOn: aStream
	self
		safelyWriteArgumentNamed: '--encoding=' withValue: self encoding on: aStream;
		safelyWriteArgumentNamed: '--locale=' withValue: self locale on: aStream;
		safelyWriteArgumentNamed: '--owner=' withValue: self owner on: aStream;
		safelyWriteArgumentNamed: '--template=' withValue: self template on: aStream