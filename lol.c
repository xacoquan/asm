#include <fcntl.h>

void	ft_cat(int fd);

int		main(int argc, char **argv)
{
	ft_cat(0);
	ft_cat(open(__FILE__, O_RDONLY));
	ft_cat(open(argv[0], O_RDONLY));
	ft_cat(-42);
	ft_cat(42);
	return (argc);
}
