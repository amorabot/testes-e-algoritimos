n = int(input("Entre com o tamanho da sequência: "))
#9 5 13
i = 1
p = 0

while i <= n:
    k = int(input("Entre com o " + str(i) + "º número: "))
    if k % 2 == 0:
        print(k, "é par")
        p += 1
    else:
        print(k, "é ímpar")
    i += 1
print(p, "números são pares")