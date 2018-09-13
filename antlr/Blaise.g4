// reference solution for CS 4090/5090 projects
grammar Blaise;

program
	: EOF
	;


// a 'match all' class so there are no lexer errors (parser will signal error)
ERR_CHAR
	: .
	;
