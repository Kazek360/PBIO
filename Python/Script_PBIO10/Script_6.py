#Rozwiązane przy pomocy sztucznej inteligencji, niemniej wiem co tu się dzieje i potrafię to wytłumaczyć.

from Bio import pairwise2

seq_a = "AACCTTGGAA"
seq_b = "AAACCCTGG"

alignments = pairwise2.align.localms(seq_a, seq_b, 2, -1, -0.5, -0.1)
# Do localms wpisuje się punktacje
# 2 punkty jeśli znajdzie pare
#-1 jeśli nie znajdzie pary
# -0.5 za dodanie spacji aka '-'
# -0.1 za rozszerzenie dziury tzn. z '-' na '--'

def custom_format_alignment(alignment):
    target, query, score, begin, end = alignment
    match_line = []

    for t, q in zip(target, query):
        if t == q:
            match_line.append('|')
        elif t == '-' or q == '-':
            match_line.append('-')
        else:
            match_line.append('.')

    matches = ''.join(match_line)
    alignment_str = f"target 0 {target} {len(target.replace('-', ''))}\n"
    alignment_str += f"       0 {matches} {len(matches)}\n"
    alignment_str += f"query  0 {query} {len(query.replace('-', ''))}\n"
    return alignment_str

for alignment in alignments:
    print(custom_format_alignment(alignment))
