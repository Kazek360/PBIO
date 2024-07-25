seq1 = "ACTAGCTTGAGCCAGT"
seq2 = "TAGACGATCAGATTCG"

pairs = 0
connection = ""

for n1, n2 in zip(seq1, seq2):
    if (n1 == 'A' and n2 == 'T') or \
       (n1 == 'T' and n2 == 'A') or \
       (n1 == 'C' and n2 == 'G') or \
       (n1 == 'G' and n2 == 'C'):
        pairs += 1
        connection += "|"
    else:
        connection += " "

print("Seq 1:", seq1)
print("      ", connection, "->", pairs)
print("Seq 2:", seq2)