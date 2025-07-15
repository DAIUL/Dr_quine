#include <stdio.h>
void ft_useless() {}
int main() {
	char *c = "#include <stdio.h>%cvoid ft_useless() {}%cint main() {%c%cchar *c = %c%s%c;%c%cprintf(c, 10, 10, 10, 9, 34, c, 34, 10, 9, 10, 9, 10, 9, 10, 10);%c%cft_useless();%c%c// useless comment inside%c}%c// useless comment outside";
	printf(c, 10, 10, 10, 9, 34, c, 34, 10, 9, 10, 9, 10, 9, 10, 10);
	ft_useless();
	// useless comment inside
}
// useless comment outside