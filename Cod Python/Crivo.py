n = int(input("Entre com n:"))
eh_primo = [False, False]
for p in range(2, n+1):
    eh_primo.append(True)

for p in range(2, n+1):
    if eh_primo[p]:
        print(p, end=" ")
        for k in range(2 * p, n + 1, p):
            eh_primo[k] = False