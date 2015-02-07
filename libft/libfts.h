/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmikaeli <bmikaeli@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/04 15:47:23 by bmikaeli          #+#    #+#             */
/*   Updated: 2015/02/06 13:36:33 by bmikaeli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H
# include <unistd.h>

void ft_bzero(void *s, size_t size);
void ft_memset(void *s, int c, size_t size);
int ft_isalpha(int c);
int ft_isdigit(int c);
int ft_isprint(int c);
int ft_tolower(int c);
int ft_toupper(int c);
int ft_isascii(int c);
int ft_isalnum(int c);
char * ft_strcat(char *s1, char *s2);
int ft_puts(const char *str);
size_t ft_strlen(const char *str);
#endif
