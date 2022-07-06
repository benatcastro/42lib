/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_check_arg.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: becastro <becastro@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/05/16 17:59:13 by becastro          #+#    #+#             */
/*   Updated: 2022/05/18 14:54:26 by becastro         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

int	ft_validate_arg(const char *s)
{
	while (*s)
	{
		if (!is_in_types(*s) || is_in_prefix(*s) || is_in_precision(*s))
			return (1);
		s++;
	}
	return (0);
}
