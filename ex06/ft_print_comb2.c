/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_comb2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppetchda <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/10/20 23:52:59 by porrapat          #+#    #+#             */
/*   Updated: 2021/10/20 23:53:55 by porrapat         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>

void	ft_putchar(char c)
{
	write(1, &c, 1);
}

void	print_int_int_it(int a, int b, int last)
{
	ft_putchar((a / 10) + '0');
	ft_putchar((a % 10) + '0');
	ft_putchar(' ');
	ft_putchar((b / 10) + '0');
	ft_putchar((b % 10) + '0');
	if (last != 1)
	{
		ft_putchar(',');
	}
}

void	ft_print_comb2(void)
{
	int	i;
	int	j;
	int	last;

	i = 0;
	while (i < 100)
	{
		j = i + 1;
		while (j < 100)
		{
			if (i == 98 && j == 99)
			{
				last = 1;
			}
			else
			{
				last = 0;
			}
			print_int_int_it(i, j, last);
			j++;
		}
		i++;
	}
}
