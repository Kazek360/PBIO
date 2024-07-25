import random

nucleotides = ['A', 'C', 'T', 'G']

value = int(input("Wpisz ilość: "))
length = int(input("Wpisz długość nukleotydu: "))

with open('sequences.txt', 'w') as file:
    for i in range(value):
        generatedSeq = ''
        for j in range(length):
            generatedSeq += random.choice(nucleotides)
        file.write(generatedSeq + '\n')
        print(generatedSeq)
