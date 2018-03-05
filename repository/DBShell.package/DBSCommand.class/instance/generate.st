generating
generate
	"Generates a String representing the shell command to execute."
	^ String streamContents: [ :s |
		self generateOn: s ]