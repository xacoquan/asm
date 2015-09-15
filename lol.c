#include <fcntl.h>

void	ft_cat(int fd);

int		main(int argc, char **argv)
{
	ft_cat(open(argv[0], O_RDONLY));
	return (argc);
}
