.DEFAULT_GOAL := all

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
	-gcc test_ex00_ft_putchar.c ./ex00/ft_putchar.c -Wall -Werror -Wextra -o test_ex00_ft_putchar
	-gcc test_ex01_ft_print_alphabet.c ./ex01/ft_print_alphabet.c -Wall -Werror -Wextra -o test_ex01_ft_print_alphabet
	-gcc test_ex02_ft_print_reverse_alphabet.c ./ex02/ft_print_reverse_alphabet.c -Wall -Werror -Wextra -o test_ex02_ft_print_reverse_alphabet
	-gcc test_ex03_ft_print_numbers.c ./ex03/ft_print_numbers.c -Wall -Werror -Wextra -o test_ex03_ft_print_numbers
	-gcc test_ex04_ft_is_negative.c ./ex04/ft_is_negative.c -Wall -Werror -Wextra -o test_ex04_ft_is_negative
	-gcc test_ex05_ft_print_comb.c ./ex05/ft_print_comb.c -Wall -Werror -Wextra -o test_ex05_ft_print_comb
	-gcc test_ex06_ft_print_comb2.c ./ex06/ft_print_comb2.c -Wall -Werror -Wextra -o test_ex06_ft_print_comb2
	-gcc test_ex07_ft_putnbr.c ./ex07/ft_putnbr.c -Wall -Werror -Wextra -o test_ex07_ft_putnbr
	-gcc test_ex08_ft_print_combn.c ./ex08/ft_print_combn.c -Wall -Werror -Wextra -o test_ex08_ft_print_combn

build-sample: compile
	-./test_ex00_ft_putchar > result_sample_ex00_ft_putchar.txt
	-./test_ex01_ft_print_alphabet > result_sample_ex01_ft_print_alphabet.txt
	-./test_ex02_ft_print_reverse_alphabet > result_sample_ex02_ft_print_reverse_alphabet.txt
	-./test_ex03_ft_print_numbers > result_sample_ex03_ft_print_numbers.txt
	-./test_ex04_ft_is_negative > result_sample_ex04_ft_is_negative.txt
	-./test_ex05_ft_print_comb > result_sample_ex05_ft_print_comb.txt
	-./test_ex06_ft_print_comb2 > result_sample_ex06_ft_print_comb2.txt
	-./test_ex07_ft_putnbr > result_sample_ex07_ft_putnbr.txt
	-./test_ex08_ft_print_combn > result_sample_ex08_ft_print_combn.txt

run:	compile
	-./test_ex00_ft_putchar > result_current_ex00_ft_putchar.txt
	-./test_ex01_ft_print_alphabet > result_current_ex01_ft_print_alphabet.txt
	-./test_ex02_ft_print_reverse_alphabet > result_current_ex02_ft_print_reverse_alphabet.txt
	-./test_ex03_ft_print_numbers > result_current_ex03_ft_print_numbers.txt
	-./test_ex04_ft_is_negative > result_current_ex04_ft_is_negative.txt
	-./test_ex05_ft_print_comb > result_current_ex05_ft_print_comb.txt
	-./test_ex06_ft_print_comb2 > result_current_ex06_ft_print_comb2.txt
	-./test_ex07_ft_putnbr > result_current_ex07_ft_putnbr.txt
	-./test_ex08_ft_print_combn > result_current_ex08_ft_print_combn.txt

all:	norminette	compile run

test:	all
	-diff result_current_ex00_ft_putchar.txt result_sample_ex00_ft_putchar.txt
	-diff result_current_ex01_ft_print_alphabet.txt result_sample_ex01_ft_print_alphabet.txt
	-diff result_current_ex02_ft_print_reverse_alphabet.txt result_sample_ex02_ft_print_reverse_alphabet.txt
	-diff result_current_ex03_ft_print_numbers.txt result_sample_ex03_ft_print_numbers.txt
	-diff result_current_ex04_ft_is_negative.txt result_sample_ex04_ft_is_negative.txt
	-diff result_current_ex05_ft_print_comb.txt result_sample_ex05_ft_print_comb.txt
	-diff result_current_ex06_ft_print_comb2.txt result_sample_ex06_ft_print_comb2.txt
	-diff result_current_ex07_ft_putnbr.txt result_sample_ex07_ft_putnbr.txt
	-diff result_current_ex08_ft_print_combn.txt result_sample_ex08_ft_print_combn.txt


clean:
	-rm -rf */*.out
	-rm -rf result_current_ex*.txt
	-rm test_ex00_ft_putchar
	-rm test_ex01_ft_print_alphabet
	-rm test_ex02_ft_print_reverse_alphabet
	-rm test_ex03_ft_print_numbers
	-rm test_ex04_ft_is_negative
	-rm test_ex05_ft_print_comb
	-rm test_ex06_ft_print_comb2
	-rm test_ex07_ft_putnbr
	-rm test_ex08_ft_print_combn


clean-sample:
	-rm -rf result_sample_ex*.txt

clean-before-push-with-sample: clean
	-git add .
	-git commit -m "Build Sample Complete"
	-git push origin master
