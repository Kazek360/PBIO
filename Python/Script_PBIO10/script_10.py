import primer3

seq_args = {
    'SEQUENCE_ID': 'MH1000',
    'SEQUENCE_TEMPLATE': 'GCTTGCATGCCTGCAGGTCGACTCTAGAGGATCCCCCTACATTTT'
    'AGCATCAGTGAGTACAGCATGCTTACTGGAAGAGAGGGTCATGCA'
    'ACAGATTAGGAGGTAAGTTTGCAAAGGCAGGCTAAGGAGGAGACG'
    'CACTGAATGCCATGGTAAGAACTCTGGACATAAAAATATTGGAAG'
    'TTGTTGAGCAAGTNAAAAAAATGTTTGGAAGTGTTACTTTAGCAA'
    'TGGCAAGAATGATAGTATGGAATAGATTGGCAGAATGAAGGCAAA'
    'ATGATTAGACATATTGCATTAAGGTAAAAAATGATAACTGAAGAA'
    'TTATGTGCCACACTTATTAATAAGAAAGAATATGTGAACCTTGCA'
    'GATGTTTCCCTCTAGTAG',
    'SEQUENCE_INCLUDED_REGION': [40,240]
}
result = primer3.design_primers(seq_args, primer3.bindings.DEFAULT_P3_ARGS.todict())

print(f"{'Left primer':<20} {'Right primer'}")
for i in range(5):
    left_start, left_length = result['PRIMER_LEFT_' + str(i)]
    right_start, right_length = result['PRIMER_RIGHT_' + str(i)]
    left_seq = seq_args['SEQUENCE_TEMPLATE'][left_start:left_start+left_length]
    right_seq = seq_args['SEQUENCE_TEMPLATE'][right_start:right_start+right_length]
    print(f"{left_seq:<20} -- {right_seq}")
