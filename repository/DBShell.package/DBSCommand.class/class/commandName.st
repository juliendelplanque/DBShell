accessing
commandName
	"Returns the name of the shell command to execute.
	 This message must be overriden by leaf subclasses.
	 For PostgreSQL, an example of such command name could be 'createdb'.
	"
	^ self subclassResponsibility