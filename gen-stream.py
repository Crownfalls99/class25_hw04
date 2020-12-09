import random

result = ""
n = 5
cnt = 0
while(True):
    n += random.choice([-3, -2, -1, 0, 1, 2, 3])
    if ( n < 0 or n > 9 ):
        continue
    result += (str(n) + ",")
    cnt += 1
    if (cnt == 10000):
        break

print(result[0:len(result) -1])

