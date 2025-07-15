#include <stdio.h>
#define CODE "#include <stdio.h>%c#define CODE %c%s%c%c#define FILE %c%s%c%c#define FT(x) fprintf(fopen(FILE, x), CODE, 10, 34, CODE, 34, 10, 34, FILE, 34, 10)%cint main() {FT(%cw%c); return 0;}"
#define FILE "Sully_"
#define FT(x) fprintf(fopen(, x), CODE, 10, 34, CODE, 34, 10, 34, FILE, 34, 10, 10, 34, 34)
int main() {FT("w"); return 0;}