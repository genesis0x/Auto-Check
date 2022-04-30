void	ft_putstr(char *str);

int		main(void)
{
	ft_putstr("Hello World!");
	ft_putstr("Bye People!");
	ft_putstr("\x00\x01\x02\x03\x04\xFF\xFE\xFD\xFC\xFB");
	ft_putstr("\x48\x65\x6C\x6C\x6F");
	ft_putstr("");
	return (0);
}
