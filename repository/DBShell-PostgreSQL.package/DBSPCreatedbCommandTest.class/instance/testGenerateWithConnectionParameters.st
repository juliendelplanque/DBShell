tests
testGenerateWithConnectionParameters
	| cmd |
	cmd := DBSPCreatedbCommand new
				dbname: 'testdb';
				host: 'localhost';
				username: 'John';
				yourself.
				
	self assert: cmd generate equals: 'createdb --host="localhost" --username="John" "testdb"'.
	
	cmd := DBSPCreatedbCommand new
				dbname: 'testdb';
				host: 'localhost';
				port: '5432';
				username: 'John';
				yourself.
				
	self assert: cmd generate equals: 'createdb --host="localhost" --port="5432" --username="John" "testdb"'