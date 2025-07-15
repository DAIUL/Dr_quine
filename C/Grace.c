#include <stdio.h>
#define FILE_NAME "Grace_kid.c"
#define CODE "#include <stdio.h>%c#define FILE_NAME %c%s%c%c#define CODE %c%s%c%c#define FT(x) int main() {fprintf(fopen(FILE_NAME, x), CODE, 10, 34, FILE_NAME, 34, 10, 34, CODE, 34, 10, 10, 34, 34, 10);return 0;}%cFT(%cw%c)%c//useless comment"
#define FT(x) int main() {fprintf(fopen(FILE_NAME, x), CODE, 10, 34, FILE_NAME, 34, 10, 34, CODE, 34, 10, 10, 34, 34, 10);return 0;}
FT("w")
//useless comment