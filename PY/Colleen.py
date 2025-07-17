#useless comment outside
def ft_useless():
	pass
if __name__ == "__main__":
	#useless comment inside
	ft_useless()
	code = '#useless comment outside\ndef ft_useless():\n\tpass\nif __name__ == %c__main__%c:\n\t#useless comment inside\n\tft_useless()\n\tcode = %r\n\tprint(code %% (34, 34, code, 39, 39), end=%c%c)'
	print(code % (34, 34, code, 39, 39), end='')