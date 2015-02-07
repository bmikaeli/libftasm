/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bmikaeli <bmikaeli@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/04 15:47:23 by bmikaeli          #+#    #+#             */
/*   Updated: 2015/02/07 13:58:16 by bmikaeli         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H
# include <unistd.h>

void	ft_bzero(void *s, size_t size);
void	*ft_memset(void *s, int c, size_t size);
void	*ft_memcpy(void *s1, const void *s2, size_t n);
char	*ft_strdup(const char *s);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_isascii(int c);
int		ft_isalnum(int c);
char	*ft_strcat(char *s1, char *s2);
int		ft_puts(const char *str);
size_t	ft_strlen(const char *str);
void	ft_cat(int fd);

#endif
