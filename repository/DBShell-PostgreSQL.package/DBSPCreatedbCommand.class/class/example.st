example
example
	^ DBSPCreatedbCommand new
		executableDirectory: '/Applications/Postgres.app/Contents/Versions/10/bin' asFileReference;
		username: 'John';
		encoding: 'UTF8';
		template: 'template0';
		dbname: 'testdb-dbshell';
		description: 'Just a test of DBShell';
		generate