#exercício do quadrado de *
n = int(input("Entre com n: "))
i = 0
for k in range(n):
    while i != n:
        print("* " * n)
        i += 1

n = int(input("Entre com n: "))
for i in range(n):
    for i in range(n):
        print("* ", end="")
    print()

n = int(input("Entre com a altura do triângulo: "))
for h in range(1, n+1):
    print(h*"* ")
