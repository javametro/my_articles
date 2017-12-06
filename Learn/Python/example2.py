import sys
import time
n = 10
for i in range(n):
    time.sleep(0.3)
    sys.stdout.write('\r')
    sys.stdout.write(str(i) * (n-i))
    sys.stdout.flush()

sys.stdout.write('\n')

