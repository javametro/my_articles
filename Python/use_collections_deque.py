from collections import deque

def search(lines, pattern, history=5):
	previous_lines = deque(maxlen=history)
	for li in lines:
		if pattern in li:
			yield li, previous_lines
		
		previous_lines.append(li)
		

if __name__ == '__main__':
	with open(r'python_test.py') as f:
		for line, previous in search(f, 'print', 5):
			for pline in previous:
				print(pline, end='')
			
			print(line, end='')
			print('-' * 20)