/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_combn.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/20 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdbool.h>

#include "ex08/ft_print_combn.c"

void	ft_putchar(char c);
void	ft_write_combo(int n, int holders[]);
void	ft_print_combn_recursive(int n, int curr, int holders[], int st_index);
void	ft_print_combn(int n);

int	main(void)
{
	ft_print_combn(2);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(3);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(4);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(5);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(6);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(7);
	ft_putchar('\n');
	ft_putchar('\n');
	ft_print_combn(8);
	ft_putchar('\n');
}
