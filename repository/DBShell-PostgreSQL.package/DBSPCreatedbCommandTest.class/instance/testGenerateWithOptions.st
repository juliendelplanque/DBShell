tests
testGenerateWithOptions
	| cmd |
	cmd := DBSPCreatedbCommand new
				dbname: 'testdb';
				encoding: 'UTF8';
				template: 'template1';
				yourself.
				
	self assert: cmd generate equals: 'createdb --encoding="UTF8" --template="template1" "testdb"'.