V = []
k= 0
pares = 0

for i in range(1,101):
  V.append(i)
  if (V[i-1]) % 2 == 0:
      pares += 1
print(V)
while pares > 0:
    if V[k] % 2 == 0:
        pares -= 1
        V.pop(k)
    else:
        k += 1
print(V)