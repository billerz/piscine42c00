
norminette:
	find . -regex '.*\.\(c\|cpp\|h\)$\' -print | norminette

all:	norminette

clean:
	rm -rf */*.out


# hello:
# 	echo "Hello World"
# 	find . -regex '.*\.\(c\|cpp\|h\)$\' -print | norminette

#	norminette

#	git
#	compile
#	run
#	clean
