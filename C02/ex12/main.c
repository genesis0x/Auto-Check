#include <string.h>

void	ft_print_memory(void *addr, unsigned int size);

int		main(void)
{
	char	str[92];

	strcat(str, "Bonjour les aminches");
	strcat(str, "\x09\x0A\x09");
	strcat(str, "c  est fou");
	strcat(str, "\x09");
	strcat(str, "tout");
	strcat(str, "\x09");
	strcat(str, "ce qu on peut faire avec");
	strcat(str, "\x09\x0A\x09");
	strcat(str, "print_memory");
	strcat(str, "\x0A\x0A\x0A\x09");
	strcat(str, "lol.lol");
	strcat(str, "\x0A");
	strcat(str, " ");
	strcat(str, "\x00");
	ft_print_memory(str, 92);
	return (0);
}
