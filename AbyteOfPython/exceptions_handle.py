try:
	text = input('enter something -->')
except EOFError:
	print('why did you do an EOF on me?')
except KeyboardInterrupt:
	print('You cancelled the operation.')

else:
	print('You entered {}'.format(text))


