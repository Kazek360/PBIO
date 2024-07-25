motif = str(input("Wpisz szukany fragment: "))
file_path = 'sequence.txt'

with open(file_path, 'r') as file:
    dna_sequence = file.read().strip()

positions = []

for i in range(len(dna_sequence) - len(motif) + 1):
    if dna_sequence[i:i + len(motif)] == motif:
        positions.append(i + 1)

# positions = [i + 1 for i in range(len(dna_sequence) - len(motif) + 1) if dna_sequence[i:i + len(motif)] == motif]

print("Szukany motyw:", motif)
print("Pozycje:", ", ".join(map(str, positions)))