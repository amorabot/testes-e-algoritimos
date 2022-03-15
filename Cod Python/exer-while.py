n = int(input("Entre com o tamanho da sequência: "))
#9 5 13
i = 1

while i <= n:
    ult = int(input("Entre com o " + str(i) + "º número: "))
    if n == 1:
        menor = ult
        break
    if i == 1:
        menor = ult
    if ult < menor:
        menor = ult
    i += 1
print(menor, "é o menor número")

