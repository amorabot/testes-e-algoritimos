n = int(input("Entre com o número a ser analisado: "))
a = int(input("Entre com o primeiro possível divisor: "))
b = int(input("Entre com o segundo possível divisor: "))

if n % a == 0 and n % b == 0:
    print(n, "é divisível por:", a, "e", b, sep=" ")
elif n % a == 0:
    print(n, "é divisível por:", a, "e não por", b, sep=" ")
elif n % b == 0:
    print(n, "não é divisível por:", a, "e é por", b, sep=" ")
else:
    print(n, "não é divisível por:", a, "e nem por", b, sep=" ")