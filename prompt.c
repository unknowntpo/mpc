#include <stdio.h>
#include <stdlib.h>

#include <editline/readline.h>

int main(int argc, char **argv)
{
    puts("Lispy Version 0.0.0.0.1");
    puts("Press Ctrl+c to Exit\n");

    while (1) {
        /* Output our prompt and get input */
        char *input = readline("lispy> ");
        add_history(input);
        printf("No you're a %s", input);
        free(input);
    }

    return 0;
}
