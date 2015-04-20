/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strreplace.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/04/20 13:37:37 by tcoppin           #+#    #+#             */
/*   Updated: 2015/04/20 13:37:47 by tcoppin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strreplace(char *str, char a, char b)
{
	int i;

	i = 0;
	if (str && a && b)
	{
		while (str[i])
		{
			if (str[i] == a)
				str[i] = b;
			i++;
		}
	}
	return (str);
}
