#include <unistd.h>

void ft_putchar(char c)
{
	write(1, &c, 1);
}

void ft_print_reverse_alphabet(void)
{
	char mychar;
	for(mychar = 'z'; mychar >= 'a'; mychar--)
	{
		ft_putchar(mychar);
	}
}

int main()
{
	ft_print_reverse_alphabet();
	return 0;
}
