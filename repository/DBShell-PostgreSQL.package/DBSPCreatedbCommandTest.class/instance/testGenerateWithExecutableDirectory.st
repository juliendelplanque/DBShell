tests
testGenerateWithExecutableDirectory
	| cmd |
	cmd := DBSPCreatedbCommand new
				executableDirectory: '/Applications/Postgres.app/Contents/Versions/10/bin' asFileReference;
				dbname: 'testdb';
				yourself.
				
	self assert: cmd generate equals: '/Applications/Postgres.app/Contents/Versions/10/bin/createdb "testdb"'