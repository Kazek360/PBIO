import random
import matplotlib.pyplot as plt

nucleotides = ['A', 'C', 'T', 'G']
weights = [0.1, 0.3, 0.4, 0.2]

value = int(input("Wpisz ilość: "))
length = int(input("Wpisz długość nukleotydu: "))

with open('sequences.txt', 'w') as file:
    for i in range(value):
        generatedSeq = ''.join(random.choices(nucleotides, weights=weights, k=length))
        file.write(generatedSeq + '\n')
        print(generatedSeq)

a = 0
c = 0
t = 0
g = 0
all = 0

with open('sequences.txt', 'r') as file:
    for line in file:
        for nucleotide in line.strip():
            if nucleotide == 'A':
                a += 1
            elif nucleotide == 'C':
                c += 1
            elif nucleotide == 'T':
                t += 1
            elif nucleotide == 'G':
                g += 1
            all += 1

percentage_a = (a / all) * 100
percentage_c = (c / all) * 100
percentage_t = (t / all) * 100
percentage_g = (g / all) * 100

x = ['A', 'C', 'T', 'G']
y = [percentage_a, percentage_c, percentage_t, percentage_g]

plt.bar(x, y)
plt.xlabel('Nukleotyd')
plt.ylabel('Procentowy udział')
plt.title('Rozkład procentowy nukleotydów w sekwencji DNA')
plt.savefig('fig_4.png')
