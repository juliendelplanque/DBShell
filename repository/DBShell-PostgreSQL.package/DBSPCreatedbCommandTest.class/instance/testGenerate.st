tests
testGenerate
	| cmd |
	cmd := DBSPCreatedbCommand new
				dbname: 'testdb';
				yourself.
				
	self assert: cmd generate equals: 'createdb "testdb"'