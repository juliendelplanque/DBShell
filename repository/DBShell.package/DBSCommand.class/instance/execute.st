executing
execute
	| returnCode |
	returnCode := LibC uniqueInstance system: self generate.
	
	returnCode = 0 "Everything was fine."
		ifTrue: [ ^ self ].
		
	DBSError new
		errorCode: returnCode;
		message: (self errorCodesDict at: returnCode ifAbsent: [ 'Undocumented error.' ]);
		signal