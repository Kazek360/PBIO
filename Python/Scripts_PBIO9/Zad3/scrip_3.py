import matplotlib.pyplot as plt

a = 0
c = 0
t = 0
g = 0
all = 0

file_path = 'sequence.txt'

with open(file_path, 'r') as file:
    dna_sequence = file.read().strip()

for nucleotide in dna_sequence:
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
plt.savefig('fig_5.png')