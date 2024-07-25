#Rozwiązane przy pomocy sztucznej inteligencji jeśli tak można nazwać mojego znajomego z ławki, niemniej (nie)wiem co tu się dzieje i potrafię to wytłumaczyć.


import primer3

with open('primers.txt', 'r') as file:
    primers = [line.strip() for line in file]

results = f"{'Primer':<20} {'Tm':<10} {'Homodimer':<10} {'Hairpin':<10}\n"

for primer in primers:
    tm = primer3.calc_tm(primer)
    homodimer = 'Yes' if primer3.calc_homodimer(primer).dg < 0 else 'No'
    hairpin = 'Yes' if primer3.calc_hairpin(primer).dg < 0 else 'No'
    results += f"{primer:<20} {tm:<10.2f} {homodimer:<10} {hairpin:<10}\n"

print(results)
