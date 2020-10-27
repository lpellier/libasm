#ifndef HEADER_H
# define HEADER_H

# include <stdio.h>
# include <stdlib.h>
# include <string.h>
# include <unistd.h>
# include <fcntl.h>

size_t		ft_strlen(const char *s);
char		*ft_strcpy(char *dest, const char *src);

// je   : jump if equal
// jne  : jump if not equal
// jl   : jump if less
// jnl  : jump if not less
// jg   : jump if greater
// jng  : jump if not greater
// jle  : jump if less or equal
// jnle : jump if not less or equal
// jge  : jump if greater or equal
// jnge : jump if not greater or equal

#endif
