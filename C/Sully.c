#include <stdio.h>
#include <stdlib.h>
#define I 5
#define FILENAME "Sully_%d.c"
#define EXECNAME "./Sully_%d"
#define CODE "#include <stdio.h>%c#include <stdlib.h>%c#define I %d%c#define FILENAME %c%s%c%c#define EXECNAME %c%s%c%c#define CODE %c%s%c%cint main() {%c%cint i = I;%c%cif (i <= 0) return 0;%c%cchar filename[100];%c%csprintf(filename, FILENAME, i - 1);%c%cFILE *f = fopen(filename, %cw%c);%c%cif (!f) return 1;%c%cfprintf(f, CODE, 10, 10, i - 1, 10, 34, FILENAME, 34, 10, 34, EXECNAME, 34, 10, 34, CODE, 34, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10);%c%cfclose(f);%c%cchar exec[100];%c%csprintf(exec, %cclang -Wall -Wextra -Werror -o Sully_%%d Sully_%%d.c%c, i - 1, i - 1);%c%csystem(exec);%c%csprintf(exec, EXECNAME, i - 1);%c%csystem(exec);%c%creturn 0;%c}"
int main() {
	int i = I;
	if (i <= 0) return 0;
	char filename[100];
	sprintf(filename, FILENAME, i - 1);
	FILE *f = fopen(filename, "w");
	if (!f) return 1;
	fprintf(f, CODE, 10, 10, i - 1, 10, 34, FILENAME, 34, 10, 34, EXECNAME, 34, 10, 34, CODE, 34, 10, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10, 9, 34, 34, 10, 9, 10, 9, 10, 9, 10, 9, 10);
	fclose(f);
	char exec[100];
	sprintf(exec, "clang -Wall -Wextra -Werror -o Sully_%d Sully_%d.c", i - 1, i - 1);
	system(exec);
	sprintf(exec, EXECNAME, i - 1);
	system(exec);
	return 0;
}