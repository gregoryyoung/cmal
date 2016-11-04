#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include "readline.h"

char * eval(char *input) {
	return input;
}

void print(char *output) {
	printf("%s\n", output);
}

int main(int argc, char *argv []) {
	for(;;) {
		char *line = read_line("user> ");
		print (eval (line));
		free (line);
	}
}
