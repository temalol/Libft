/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nmustach <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/22 18:33:07 by nmustach          #+#    #+#             */
/*   Updated: 2019/12/05 01:03:43 by nmustach         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void ft_lstdel(t_list **alst, void (*del)(void *, size_t))
{
	t_list *tmp;
	while((*alst))
	{
		tmp = ((*alst)->next);
		del((*alst)->content, (*alst)->content_size);
		free(*alst);
		(*alst) = tmp;
	}
}