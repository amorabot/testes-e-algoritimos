from decimal import Decimal
#24.35   09.20   00.40
x = (Decimal(input("Digite o preço em laer's:"))) * 100
A = x // 1000
B = (x - (A * 1000)) // 100
C = (x - ((A * 1000) + (B * 100))) // 10
D = int((x - ((A * 1000) + (B * 100) + (C * 10))))
print("R$", D,C,".",B,A, sep="")