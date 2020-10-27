#include "libasm.h"

int main(int ac, char **av)
{
	(void) ac;

	// printf("my function : %ld\nstrlen :      %ld\n", ft_strlen(av[1]), strlen(av[1]));
	printf("ft_strcpy : %s\nstrcpy    : %s\n", ft_strcpy(av[1], av[2]), strcpy(av[1], av[2]));
	return (0);
}
