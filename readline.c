#include <stdlib.h>
#include <stdio.h>

#ifdef USE_READLINE
  #include <readline/readline.h>
  #include <readline/history.h>

  char *
  read_line (char prompt[]) {
    char *line;

    line = readline (prompt);
    if (!line) return NULL; 
    add_history (line);
    return line;
  }

#else
  char * read_line(char prompt[]) {
    char *buffer = NULL;
      int read;
      size_t len;
      printf ("%s", prompt);
      read = getline (&buffer, &len, stdin);
      buffer[read - 1] = 0;
      return buffer;
  }
#endif