n = int(input("Entre com n: "))

d = 2
l = []
while n != 1:
    if n % d == 0:
        n = n // d
        l.append(d)
    else:
        d += 1
print(l)