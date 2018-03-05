tests
testGenerate
	| cmd |
	cmd := DBSPDropdbCommand new
				dbname: 'testdb';
				yourself.
				
	self assert: cmd generate equals: 'dropdb "testdb"'