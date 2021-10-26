
norminette:
	-norminette ./ex00/ft_putchar.c
	-norminette ./ex01/ft_print_alphabet.c
	-norminette ./ex02/ft_print_reverse_alphabet.c
	-norminette ./ex03/ft_print_numbers.c
	-norminette ./ex04/ft_is_negative.c
	-norminette ./ex05/ft_print_comb.c
	-norminette ./ex06/ft_print_comb2.c
	-norminette ./ex07/ft_putnbr.c
	-norminette ./ex08/ft_print_combn.c

compile:
	-gcc test_ex00_ft_putchar.c -Wall -Werror -Wextra -o test_ex00_ft_putchar
	-gcc test_ex01_ft_print_alphabet.c -Wall -Werror -Wextra -o test_ex01_ft_print_alphabet
	-gcc test_ex02_ft_print_reverse_alphabet.c -Wall -Werror -Wextra -o test_ex02_ft_print_reverse_alphabet
	-gcc test_ex03_ft_print_numbers.c -Wall -Werror -Wextra -o test_ex03_ft_print_numbers
	-gcc test_ex04_ft_is_negative.c -Wall -Werror -Wextra -o test_ex04_ft_is_negative
	-gcc test_ex05_ft_print_comb.c -Wall -Werror -Wextra -o test_ex05_ft_print_comb
	-gcc test_ex06_ft_putnbr.c -Wall -Werror -Wextra -o test_ex06_ft_putnbr
	-gcc test_ex07_ft_putnbr.c -Wall -Werror -Wextra -o test_ex07_ft_putnbr
	-gcc test_ex08_ft_putnbr.c -Wall -Werror -Wextra -o test_ex08_ft_putnbr
all:	norminette	compile

clean:
	-rm -rf */*.out
	-rm test_ex00_ft_putchar
	-rm test_ex01_ft_print_alphabet
	-rm test_ex02_ft_print_reverse_alphabet
	-rm test_ex03_ft_print_numbers
	-rm test_ex04_ft_is_negative
	-rm test_ex05_ft_print_comb
	-rm test_ex06_ft_putnbr
	-rm test_ex07_ft_putnbr
	-rm test_ex08_ft_putnbr


# hello:
# 	echo "Hello World"
# 	find . -regex '.*\.\(c\|cpp\|h\)$\' -print | norminette

#	norminette

#	git
#	compile
#	run
#	clean
