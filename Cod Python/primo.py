p = int(input("Entre com o primo em questão: "))

n = 0
i = 1
while i <= p:
    if p % i == 0:
        print(i, "divide", p)
        n += 1
    i += 1
if n == 2:
    print(p, "é primo")
else:
    print(p,"tem", n,"divisores")