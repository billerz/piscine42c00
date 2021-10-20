#include <unistd.h>

void ft_putchar(char c)
{
	write(1, &c, 1);
}

void ft_print_alphabet(void)
{
	char mychar;
	for(mychar = 'a'; mychar <= 'z'; mychar++)
	{
		ft_putchar(mychar);
	}
}

int main()
{
	ft_print_alphabet();
	return 0;
}
