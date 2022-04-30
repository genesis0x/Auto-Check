#include <stdio.h>

char	*ft_strjoin(int size, char **strs, char *sep);

int		main(void)
{
	int		i;
	int		size;
	char	*str[3];
	char	*sep[5];

	i = 0;
	size = 3;
	str[0] = "Hello";
	str[1] = "World";
	str[2] = "\x48\x65\x6C\x6C\x6F";
	sep[0] = " ";
	sep[1] = ", ";
	sep[2] = "\t";
	sep[3] = "\x0A";
	sep[4] = "\xFF";
	while (i < 5)
		printf("%s", ft_strjoin(size, str, sep[i++]));
	return (0);
}
