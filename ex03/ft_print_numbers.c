#include <unistd.h>

void ft_putchar(char c)
{
	write(1, &c, 1);
}

void ft_print_numbers(void)
{
	char mychar;
	for(mychar = '0'; mychar <= '9'; mychar++)
	{
		ft_putchar(mychar);
	}
}

int main()
{
	ft_print_numbers();
	return 0;
}
