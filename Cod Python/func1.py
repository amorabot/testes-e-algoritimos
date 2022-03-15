#vê qual num é maior
def dif(a,b):
    dif = a - b
    if dif <= 0:
        print(a, "menor que", b)
    else:
        print(a, "maior que", b)
    return dif


a = int(input("Entre com a: "))
b = int(input("Entre com b: "))
x = dif(a,b)

#checa se o num é primo:
def primo(p):
    k = 2
    while k * k <= p:
        if p % k == 0:
            return False
        k += 1
    return True
p = int(input("Entre com p: "))
print(primo(p))

#inversão de listas:
def inverte(lista):
    nova_lista = []
    for i in range(len(lista) - 1, -1, -1):
        nova_lista.append(lista[i])
    return nova_lista

print(inverte([3,2,1]))

#lista de divisores de um número:
#por fazer