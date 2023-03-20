# Bioinformatics project. Alignment

In this project the GRCh38.p14 version of human genome was used. 

```
$ hisat2-build -p 10 GCF_000001405.40_GRCh38.p14_genomic.fna genome

Settings:
  Output files: "genome.*.ht2"
  Line rate: 6 (line is 64 bytes)
  Lines per side: 1 (side is 64 bytes)
  Offset rate: 4 (one in 16)
  FTable chars: 10
  Strings: unpacked
  Local offset rate: 3 (one in 8)
  Local fTable chars: 6
  Local sequence length: 57344
  Local sequence overlap between two consecutive indexes: 1024
  Endianness: little
  Actual local endianness: little
  Sanity checking: disabled
  Assertions: disabled
  Random seed: 0
  Sizeofs: void*:8, int:4, long:8, size_t:8
Input files DNA, FASTA:
  GCF_000001405.40_GRCh38.p14_genomic.fna
Reading reference sizes
  Time reading reference sizes: 00:00:23
Calculating joined length
Writing header
Reserving space for joined string
Joining reference sequences
  Time to join reference sequences: 00:00:10
  Time to read SNPs and splice sites: 00:00:00
Using parameters --bmax 58815359 --dcv 1024
  Doing ahead-of-time memory usage test
  Passed!  Constructing with these parameters: --bmax 58815359 --dcv 1024
Constructing suffix-array element generator
Building DifferenceCoverSample
  Building sPrime
  Building sPrimeOrder
  V-Sorting samples
  V-Sorting samples time: 00:00:26
  Allocating rank array
  Ranking v-sort output
  Ranking v-sort output time: 00:00:20
  Invoking Larsson-Sadakane on ranks
  Invoking Larsson-Sadakane on ranks time: 00:00:26
  Sanity-checking and returning
Building samples
Reserving space for 108 sample suffixes
Generating random suffixes
QSorting 108 sample offsets, eliminating duplicates
QSorting sample offsets, eliminating duplicates time: 00:00:00
Multikey QSorting 108 samples
  (Using difference cover)
  Multikey QSorting samples time: 00:00:00
Calculating bucket sizes
Splitting and merging
  Splitting and merging time: 00:00:00
Split 15, merged 46; iterating...
Splitting and merging
  Splitting and merging time: 00:00:00
Split 7, merged 9; iterating...
Splitting and merging
  Splitting and merging time: 00:00:00
Split 5, merged 4; iterating...
Splitting and merging
  Splitting and merging time: 00:00:00
Split 1, merged 5; iterating...
Splitting and merging
  Splitting and merging time: 00:00:00
Avg bucket size: 4.29701e+07 (target: 58815358)
Converting suffix-array elements to index image
Allocating ftab, absorbFtab
Entering GFM loop
Getting block 1 of 73
  Reserving size (58815359) for bucket 1
  Calculating Z arrays for bucket 1
Getting block 2 of 73
  Reserving size (58815359) for bucket 2
  Entering block accumulator loop for bucket 1:
Getting block 3 of 73
  Reserving size (58815359) for bucket 3
  Calculating Z arrays for bucket 2
Getting block 4 of 73
  Reserving size (58815359) for bucket 4
  Calculating Z arrays for bucket 3
  Entering block accumulator loop for bucket 2:
  Calculating Z arrays for bucket 4
Getting block 5 of 73
  Reserving size (58815359) for bucket 5
  Entering block accumulator loop for bucket 3:
Getting block 6 of 73
  Reserving size (58815359) for bucket 6
  Calculating Z arrays for bucket 5
  Entering block accumulator loop for bucket 4:
Getting block 7 of 73
  Reserving size (58815359) for bucket 7
  Calculating Z arrays for bucket 6
  Entering block accumulator loop for bucket 5:
Getting block 8 of 73
  Reserving size (58815359) for bucket 8
Getting block 9 of 73
  Calculating Z arrays for bucket 7
  Entering block accumulator loop for bucket 6:
  Calculating Z arrays for bucket 8
  Reserving size (58815359) for bucket 9
  Calculating Z arrays for bucket 9
Getting block 10 of 73
  Reserving size (58815359) for bucket 10
  Entering block accumulator loop for bucket 8:
  Entering block accumulator loop for bucket 7:
  Calculating Z arrays for bucket 10
  Entering block accumulator loop for bucket 9:
  Entering block accumulator loop for bucket 10:
  bucket 3: 10%
  bucket 4: 10%
  bucket 5: 10%
  bucket 7: 10%
  bucket 6: 10%
  bucket 8: 10%
  bucket 1: 10%
  bucket 2: 10%
  bucket 10: 10%
  bucket 9: 10%
  bucket 3: 20%
  bucket 5: 20%
  bucket 7: 20%
  bucket 1: 20%
  bucket 4: 20%
  bucket 10: 20%
  bucket 2: 20%
  bucket 6: 20%
  bucket 9: 20%
  bucket 8: 20%
  bucket 3: 30%
  bucket 1: 30%
  bucket 5: 30%
  bucket 7: 30%
  bucket 10: 30%
  bucket 3: 40%
  bucket 1: 40%
  bucket 4: 30%
  bucket 9: 30%
  bucket 2: 30%
  bucket 5: 40%
  bucket 6: 30%
  bucket 7: 40%
  bucket 8: 30%
  bucket 1: 50%
  bucket 3: 50%
  bucket 10: 40%
  bucket 9: 40%
  bucket 5: 50%
  bucket 7: 50%
  bucket 6: 40%
  bucket 2: 40%
  bucket 4: 40%
  bucket 3: 60%
  bucket 1: 60%
  bucket 10: 50%
  bucket 5: 60%
  bucket 8: 40%
  bucket 2: 50%
  bucket 6: 50%
  bucket 7: 60%
  bucket 3: 70%
  bucket 9: 50%
  bucket 4: 50%
  bucket 1: 70%
  bucket 10: 60%
  bucket 2: 60%
  bucket 5: 70%
  bucket 7: 70%
  bucket 3: 80%
  bucket 6: 60%
  bucket 1: 80%
  bucket 8: 50%
  bucket 2: 70%
  bucket 5: 80%
  bucket 10: 70%
  bucket 7: 80%
  bucket 3: 90%
  bucket 4: 60%
  bucket 9: 60%
  bucket 1: 90%
  bucket 2: 80%
  bucket 5: 90%
  bucket 7: 90%
  bucket 3: 100%
  Sorting block of length 16044177 for bucket 3
  (Using difference cover)
  bucket 10: 80%
  bucket 6: 70%
  bucket 1: 100%
  Sorting block of length 34714005 for bucket 1
  (Using difference cover)
  bucket 8: 60%
  bucket 2: 90%
  bucket 4: 70%
  bucket 5: 100%
  Sorting block of length 44215572 for bucket 5
  (Using difference cover)
  bucket 9: 70%
  bucket 7: 100%
  Sorting block of length 42513801 for bucket 7
  (Using difference cover)
  bucket 10: 90%
  bucket 2: 100%
  Sorting block of length 51873303 for bucket 2
  (Using difference cover)
  bucket 6: 80%
  bucket 8: 70%
  bucket 4: 80%
  bucket 10: 100%
  Sorting block of length 46714171 for bucket 10
  (Using difference cover)
  bucket 9: 80%
  bucket 6: 90%
  Sorting block time: 00:00:08
Returning block of 16044178 for bucket 3
Getting block 11 of 73
  Reserving size (58815359) for bucket 11
  Calculating Z arrays for bucket 11
  Entering block accumulator loop for bucket 11:
  bucket 4: 90%
  bucket 8: 80%
  bucket 9: 90%
  bucket 11: 10%
  bucket 6: 100%
  Sorting block of length 53491660 for bucket 6
  (Using difference cover)
  bucket 4: 100%
  Sorting block of length 50691944 for bucket 4
  (Using difference cover)
  bucket 8: 90%
  bucket 11: 20%
  bucket 9: 100%
  Sorting block of length 55530572 for bucket 9
  (Using difference cover)
  bucket 11: 30%
  bucket 8: 100%
  Sorting block of length 51484380 for bucket 8
  (Using difference cover)
  bucket 11: 40%
  Sorting block time: 00:00:19
Returning block of 34714006 for bucket 1
Getting block 12 of 73
  Reserving size (58815359) for bucket 12
  Calculating Z arrays for bucket 12
  Entering block accumulator loop for bucket 12:
  bucket 11: 50%
  bucket 12: 10%
  bucket 11: 60%
  bucket 12: 20%
  Sorting block time: 00:00:24
Returning block of 42513802 for bucket 7
  bucket 11: 70%
Getting block 13 of 73
  Reserving size (58815359) for bucket 13
  Calculating Z arrays for bucket 13
  Entering block accumulator loop for bucket 13:
  bucket 12: 30%
  bucket 11: 80%
  bucket 13: 10%
  bucket 12: 40%
  Sorting block time: 00:00:29
Returning block of 44215573 for bucket 5
  Sorting block time: 00:00:29
Returning block of 51873304 for bucket 2
Getting block 14 of 73
  Reserving size (58815359) for bucket 14
  Calculating Z arrays for bucket 14
  Entering block accumulator loop for bucket 14:
  bucket 11: 90%
  bucket 13: 20%
Getting block 15 of 73
  Reserving size (58815359) for bucket 15
  Calculating Z arrays for bucket 15
  Entering block accumulator loop for bucket 15:
  Sorting block time: 00:00:28
Returning block of 46714172 for bucket 10
  bucket 12: 50%
Getting block 16 of 73
  Reserving size (58815359) for bucket 16
  Calculating Z arrays for bucket 16
  Entering block accumulator loop for bucket 16:
  bucket 14: 10%
  bucket 11: 100%
  Sorting block of length 23227586 for bucket 11
  (Using difference cover)
  bucket 13: 30%
  bucket 12: 60%
  bucket 16: 10%
  bucket 15: 10%
  bucket 14: 20%
  bucket 13: 40%
  bucket 12: 70%
  bucket 16: 20%
  bucket 15: 20%
  bucket 14: 30%
  bucket 13: 50%
  bucket 12: 80%
  bucket 16: 30%
  bucket 14: 40%
  bucket 13: 60%
  bucket 12: 90%
  bucket 15: 30%
  bucket 16: 40%
  Sorting block time: 00:00:11
Returning block of 23227587 for bucket 11
  bucket 14: 50%
  bucket 13: 70%
  bucket 12: 100%
  Sorting block of length 47791901 for bucket 12
  (Using difference cover)
Getting block 17 of 73
  Reserving size (58815359) for bucket 17
  Calculating Z arrays for bucket 17
  Entering block accumulator loop for bucket 17:
  bucket 16: 50%
  bucket 15: 40%
  Sorting block time: 00:00:38
Returning block of 53491661 for bucket 6
  bucket 13: 80%
  bucket 17: 10%
  Sorting block time: 00:00:38
Returning block of 50691945 for bucket 4
  bucket 14: 60%
Getting block 18 of 73
  Reserving size (58815359) for bucket 18
  Calculating Z arrays for bucket 18
  Entering block accumulator loop for bucket 18:
  bucket 16: 60%
Getting block 19 of 73
  Reserving size (58815359) for bucket 19
  Calculating Z arrays for bucket 19
  Entering block accumulator loop for bucket 19:
  bucket 15: 50%
  bucket 13: 90%
  bucket 17: 20%
  bucket 14: 70%
  bucket 16: 70%
  Sorting block time: 00:00:39
Returning block of 51484381 for bucket 8
  bucket 18: 10%
  Sorting block time: 00:00:42
Returning block of 55530573 for bucket 9
  bucket 13: 100%
  Sorting block of length 58724859 for bucket 13
  (Using difference cover)
  bucket 17: 30%
  bucket 19: 10%
Getting block 20 of 73
  Reserving size (58815359) for bucket 20
  Calculating Z arrays for bucket 20
  Entering block accumulator loop for bucket 20:
  bucket 15: 60%
  bucket 14: 80%
Getting block 21 of 73
  Reserving size (58815359) for bucket 21
  Calculating Z arrays for bucket 21
  Entering block accumulator loop for bucket 21:
  bucket 16: 80%
  bucket 18: 20%
  bucket 19: 20%
  bucket 20: 10%
  bucket 17: 40%
  bucket 15: 70%
  bucket 16: 90%
  bucket 21: 10%
  bucket 14: 90%
  bucket 18: 30%
  bucket 17: 50%
  bucket 19: 30%
  bucket 16: 100%
  Sorting block of length 56679587 for bucket 16
  (Using difference cover)
  bucket 20: 20%
  bucket 15: 80%
  bucket 18: 40%
  bucket 21: 20%
  bucket 14: 100%
  Sorting block of length 35090412 for bucket 14
  (Using difference cover)
  bucket 17: 60%
  bucket 19: 40%
  bucket 18: 50%
  bucket 15: 90%
  bucket 21: 30%
  bucket 20: 30%
  bucket 19: 50%
  bucket 17: 70%
  bucket 18: 60%
  bucket 19: 60%
  bucket 21: 40%
  bucket 15: 100%
  Sorting block of length 39488142 for bucket 15
  (Using difference cover)
  bucket 18: 70%
  bucket 20: 40%
  Sorting block time: 00:00:27
Returning block of 47791902 for bucket 12
  bucket 17: 80%
Getting block 22 of 73
  Reserving size (58815359) for bucket 22
  Calculating Z arrays for bucket 22
  Entering block accumulator loop for bucket 22:
  bucket 19: 70%
  bucket 21: 50%
  bucket 18: 80%
  bucket 20: 50%
  bucket 19: 80%
  bucket 22: 10%
  bucket 17: 90%
  bucket 21: 60%
  bucket 19: 90%
  bucket 18: 90%
  bucket 22: 20%
  bucket 20: 60%
  bucket 17: 100%
  Sorting block of length 26722360 for bucket 17
  (Using difference cover)
  bucket 21: 70%
  bucket 19: 100%
  Sorting block of length 57694235 for bucket 19
  (Using difference cover)
  bucket 22: 30%
  Sorting block time: 00:00:30
Returning block of 58724860 for bucket 13
  bucket 18: 100%
  Sorting block of length 41244436 for bucket 18
  (Using difference cover)
Getting block 23 of 73
  Reserving size (58815359) for bucket 23
  Calculating Z arrays for bucket 23
  Entering block accumulator loop for bucket 23:
  bucket 20: 70%
  bucket 21: 80%
  Sorting block time: 00:00:23
Returning block of 35090413 for bucket 14
  bucket 22: 40%
Getting block 24 of 73
  Reserving size (58815359) for bucket 24
  Calculating Z arrays for bucket 24
  Entering block accumulator loop for bucket 24:
  bucket 23: 10%
  bucket 20: 80%
  bucket 21: 90%
  bucket 22: 50%
  bucket 20: 90%
  bucket 24: 10%
  bucket 23: 20%
  bucket 21: 100%
  Sorting block of length 50923280 for bucket 21
  (Using difference cover)
  bucket 22: 60%
  bucket 24: 20%
  bucket 20: 100%
  Sorting block of length 42517352 for bucket 20
  (Using difference cover)
  bucket 23: 30%
  bucket 22: 70%
  Sorting block time: 00:00:37
Returning block of 56679588 for bucket 16
  bucket 24: 30%
  Sorting block time: 00:00:29
Returning block of 39488143 for bucket 15
Getting block 25 of 73
  Reserving size (58815359) for bucket 25
  Calculating Z arrays for bucket 25
  Entering block accumulator loop for bucket 25:
  Sorting block time: 00:00:19
Returning block of 26722361 for bucket 17
Getting block 26 of 73
  Reserving size (58815359) for bucket 26
  Calculating Z arrays for bucket 26
  Entering block accumulator loop for bucket 26:
Getting block 27 of 73
  Reserving size (58815359) for bucket 27
  Calculating Z arrays for bucket 27
  Entering block accumulator loop for bucket 27:
  bucket 22: 80%
  bucket 23: 40%
  bucket 24: 40%
  bucket 25: 10%
  bucket 22: 90%
  bucket 26: 10%
  bucket 24: 50%
  bucket 27: 10%
  bucket 23: 50%
  bucket 25: 20%
  bucket 22: 100%
  Sorting block of length 41137765 for bucket 22
  (Using difference cover)
  bucket 24: 60%
  bucket 25: 30%
  bucket 26: 20%
  bucket 27: 20%
  bucket 23: 60%
  Sorting block time: 00:00:30
Returning block of 57694236 for bucket 19
  bucket 24: 70%
  bucket 25: 40%
Getting block 28 of 73
  Reserving size (58815359) for bucket 28
  Calculating Z arrays for bucket 28
  Entering block accumulator loop for bucket 28:
  Sorting block time: 00:00:30
Returning block of 41244437 for bucket 18
  bucket 26: 30%
Getting block 29 of 73
  Reserving size (58815359) for bucket 29
  Calculating Z arrays for bucket 29
  Entering block accumulator loop for bucket 29:
  bucket 27: 30%
  bucket 23: 70%
  bucket 25: 50%
  bucket 24: 80%
  bucket 26: 40%
  bucket 29: 10%
  bucket 28: 10%
  bucket 25: 60%
  bucket 26: 50%
  bucket 27: 40%
  bucket 29: 20%
  bucket 23: 80%
  bucket 24: 90%
  bucket 28: 20%
  bucket 25: 70%
  bucket 29: 30%
  bucket 26: 60%
  Sorting block time: 00:00:29
Returning block of 42517353 for bucket 20
  bucket 27: 50%
  bucket 23: 90%
  bucket 25: 80%
Getting block 30 of 73
  Reserving size (58815359) for bucket 30
  Calculating Z arrays for bucket 30
  Entering block accumulator loop for bucket 30:
  bucket 24: 100%
  Sorting block of length 52515372 for bucket 24
  (Using difference cover)
  bucket 29: 40%
  Sorting block time: 00:00:34
Returning block of 50923281 for bucket 21
  bucket 26: 70%
  bucket 28: 30%
  Sorting block time: 00:00:21
Returning block of 41137766 for bucket 22
Getting block 31 of 73
  Reserving size (58815359) for bucket 31
  Calculating Z arrays for bucket 31
  Entering block accumulator loop for bucket 31:
Getting block 32 of 73
  Reserving size (58815359) for bucket 32
  Calculating Z arrays for bucket 32
  Entering block accumulator loop for bucket 32:
  bucket 25: 90%
  bucket 29: 50%
  bucket 23: 100%
  Sorting block of length 19721913 for bucket 23
  (Using difference cover)
  bucket 27: 60%
  bucket 26: 80%
  bucket 30: 10%
  bucket 28: 40%
  bucket 25: 100%
  Sorting block of length 14451287 for bucket 25
  (Using difference cover)
  bucket 29: 60%
  bucket 32: 10%
  bucket 31: 10%
  bucket 26: 90%
  bucket 27: 70%
  bucket 30: 20%
  bucket 28: 50%
  bucket 29: 70%
  bucket 26: 100%
  Sorting block of length 46227154 for bucket 26
  (Using difference cover)
  bucket 32: 20%
  bucket 31: 20%
  bucket 27: 80%
  bucket 32: 30%
  bucket 30: 30%
  Sorting block time: 00:00:09
Returning block of 14451288 for bucket 25
  bucket 28: 60%
Getting block 33 of 73
  Reserving size (58815359) for bucket 33
  Calculating Z arrays for bucket 33
  Entering block accumulator loop for bucket 33:
  bucket 29: 80%
  Sorting block time: 00:00:13
Returning block of 19721914 for bucket 23
Getting block 34 of 73
  Reserving size (58815359) for bucket 34
  Calculating Z arrays for bucket 34
  Entering block accumulator loop for bucket 34:
  bucket 27: 90%
  bucket 32: 40%
  bucket 31: 30%
  bucket 33: 10%
  bucket 28: 70%
  bucket 30: 40%
  bucket 29: 90%
  bucket 32: 50%
  bucket 28: 80%
  bucket 27: 100%
  Sorting block of length 51207087 for bucket 27
  (Using difference cover)
  bucket 34: 10%
  bucket 31: 40%
  bucket 33: 20%
  bucket 32: 60%
  bucket 28: 90%
  bucket 30: 50%
  bucket 29: 100%
  Sorting block of length 41241930 for bucket 29
  (Using difference cover)
  bucket 32: 70%
  bucket 28: 100%
  Sorting block of length 58516791 for bucket 28
  (Using difference cover)
  bucket 34: 20%
  bucket 33: 30%
  bucket 31: 50%
  bucket 30: 60%
  bucket 32: 80%
  Sorting block time: 00:00:32
Returning block of 52515373 for bucket 24
Getting block 35 of 73
  Reserving size (58815359) for bucket 35
  Calculating Z arrays for bucket 35
  Entering block accumulator loop for bucket 35:
  bucket 34: 30%
  bucket 33: 40%
  bucket 31: 60%
  bucket 32: 90%
  bucket 30: 70%
  Sorting block time: 00:00:25
Returning block of 46227155 for bucket 26
  bucket 35: 10%
Getting block 36 of 73
  Reserving size (58815359) for bucket 36
  Calculating Z arrays for bucket 36
  Entering block accumulator loop for bucket 36:
  bucket 32: 100%
  Sorting block of length 48573598 for bucket 32
  (Using difference cover)
  bucket 33: 50%
  bucket 34: 40%
  bucket 31: 70%
  bucket 35: 20%
  bucket 30: 80%
  bucket 36: 10%
  bucket 35: 30%
  bucket 33: 60%
  bucket 34: 50%
  bucket 36: 20%
  bucket 31: 80%
  bucket 30: 90%
  bucket 35: 40%
  bucket 36: 30%
  bucket 33: 70%
  bucket 34: 60%
  bucket 30: 100%
  Sorting block of length 21842687 for bucket 30
  (Using difference cover)
  bucket 31: 90%
  bucket 35: 50%
  bucket 36: 40%
  bucket 33: 80%
  bucket 34: 70%
  bucket 35: 60%
  bucket 36: 50%
  bucket 31: 100%
  Sorting block of length 58252942 for bucket 31
  (Using difference cover)
  Sorting block time: 00:00:31
Returning block of 41241931 for bucket 29
  bucket 33: 90%
  bucket 35: 70%
  Sorting block time: 00:00:29
Returning block of 58516792 for bucket 28
  Sorting block time: 00:00:34
Returning block of 51207088 for bucket 27
Getting block 37 of 73
  Reserving size (58815359) for bucket 37
  Calculating Z arrays for bucket 37
  Entering block accumulator loop for bucket 37:
  bucket 36: 60%
  bucket 34: 80%
Getting block 38 of 73
  Reserving size (58815359) for bucket 38
  Calculating Z arrays for bucket 38
  Entering block accumulator loop for bucket 38:
Getting block 39 of 73
  Reserving size (58815359) for bucket 39
  Calculating Z arrays for bucket 39
  Entering block accumulator loop for bucket 39:
  bucket 35: 80%
  Sorting block time: 00:00:23
Returning block of 48573599 for bucket 32
  bucket 34: 90%
  bucket 33: 100%
  Sorting block of length 53137241 for bucket 33
  (Using difference cover)
Getting block 40 of 73
  Reserving size (58815359) for bucket 40
  Calculating Z arrays for bucket 40
  Entering block accumulator loop for bucket 40:
  bucket 39: 10%
  bucket 36: 70%
  bucket 38: 10%
  bucket 37: 10%
  bucket 35: 90%
  bucket 34: 100%
  Sorting block of length 37292507 for bucket 34
  (Using difference cover)
  Sorting block time: 00:00:16
Returning block of 21842688 for bucket 30
  bucket 40: 10%
Getting block 41 of 73
  Reserving size (58815359) for bucket 41
  Calculating Z arrays for bucket 41
  Entering block accumulator loop for bucket 41:
  bucket 39: 20%
  bucket 35: 100%
  Sorting block of length 41813118 for bucket 35
  (Using difference cover)
  bucket 38: 20%
  bucket 36: 80%
  bucket 40: 20%
  bucket 37: 20%
  bucket 39: 30%
  bucket 41: 10%
  bucket 38: 30%
  bucket 40: 30%
  bucket 36: 90%
  bucket 39: 40%
  bucket 37: 30%
  bucket 41: 20%
  bucket 40: 40%
  bucket 38: 40%
  bucket 36: 100%
  Sorting block of length 48985967 for bucket 36
  (Using difference cover)
  bucket 39: 50%
  bucket 38: 50%
  bucket 37: 40%
  bucket 40: 50%
  bucket 41: 30%
  bucket 39: 60%
  bucket 38: 60%
  Sorting block time: 00:00:19
Returning block of 37292508 for bucket 34
  bucket 40: 60%
Getting block 42 of 73
  Reserving size (58815359) for bucket 42
  Calculating Z arrays for bucket 42
  Entering block accumulator loop for bucket 42:
  bucket 39: 70%
  bucket 37: 50%
  bucket 41: 40%
  bucket 38: 70%
  bucket 40: 70%
  bucket 39: 80%
  bucket 42: 10%
  bucket 37: 60%
  bucket 41: 50%
  bucket 40: 80%
  bucket 38: 80%
  bucket 39: 90%
  bucket 42: 20%
  Sorting block time: 00:00:27
Returning block of 41813119 for bucket 35
Getting block 43 of 73
  Reserving size (58815359) for bucket 43
  Calculating Z arrays for bucket 43
  Entering block accumulator loop for bucket 43:
  bucket 38: 90%
  bucket 40: 90%
  bucket 39: 100%
  Sorting block of length 51773413 for bucket 39
  (Using difference cover)
  bucket 41: 60%
  bucket 37: 70%
  Sorting block time: 00:00:44
Returning block of 58252943 for bucket 31
  bucket 42: 30%
  bucket 43: 10%
  bucket 38: 100%
  Sorting block of length 10525850 for bucket 38
  (Using difference cover)
  bucket 40: 100%
  Sorting block of length 55056573 for bucket 40
  (Using difference cover)
Getting block 44 of 73
  Reserving size (58815359) for bucket 44
  Calculating Z arrays for bucket 44
  Entering block accumulator loop for bucket 44:
  bucket 41: 70%
  Sorting block time: 00:00:40
Returning block of 53137242 for bucket 33
  Sorting block time: 00:00:25
Returning block of 48985968 for bucket 36
  bucket 37: 80%
  bucket 43: 20%
Getting block 45 of 73
  Reserving size (58815359) for bucket 45
  Calculating Z arrays for bucket 45
  Entering block accumulator loop for bucket 45:
Getting block 46 of 73
  Reserving size (58815359) for bucket 46
  Calculating Z arrays for bucket 46
  Entering block accumulator loop for bucket 46:
  bucket 42: 40%
  Sorting block time: 00:00:05
Returning block of 10525851 for bucket 38
Getting block 47 of 73
  Reserving size (58815359) for bucket 47
  Calculating Z arrays for bucket 47
  Entering block accumulator loop for bucket 47:
  bucket 44: 10%
  bucket 43: 30%
  bucket 45: 10%
  bucket 41: 80%
  bucket 42: 50%
  bucket 37: 90%
  bucket 46: 10%
  bucket 47: 10%
  bucket 43: 40%
  bucket 45: 20%
  bucket 44: 20%
  bucket 42: 60%
  bucket 41: 90%
  bucket 43: 50%
  bucket 45: 30%
  bucket 37: 100%
  Sorting block of length 53955476 for bucket 37
  (Using difference cover)
  bucket 46: 20%
  bucket 47: 20%
  bucket 42: 70%
  bucket 44: 30%
  bucket 45: 40%
  bucket 41: 100%
  Sorting block of length 48213613 for bucket 41
  (Using difference cover)
  bucket 43: 60%
  bucket 47: 30%
  bucket 46: 30%
  bucket 42: 80%
  bucket 44: 40%
  bucket 47: 40%
  bucket 45: 50%
  bucket 43: 70%
  bucket 42: 90%
  bucket 46: 40%
  Sorting block time: 00:00:30
Returning block of 51773414 for bucket 39
  bucket 44: 50%
  bucket 45: 60%
Getting block 48 of 73
  Reserving size (58815359) for bucket 48
  Calculating Z arrays for bucket 48
  Entering block accumulator loop for bucket 48:
  bucket 47: 50%
  bucket 43: 80%
  bucket 42: 100%
  Sorting block of length 45514544 for bucket 42
  (Using difference cover)
  bucket 46: 50%
  bucket 45: 70%
  bucket 44: 60%
  bucket 48: 10%
  Sorting block time: 00:00:31
Returning block of 55056574 for bucket 40
Getting block 49 of 73
  Reserving size (58815359) for bucket 49
  Calculating Z arrays for bucket 49
  Entering block accumulator loop for bucket 49:
  bucket 47: 60%
  bucket 45: 80%
  bucket 48: 20%
  bucket 44: 70%
  bucket 43: 90%
  bucket 46: 60%
  bucket 45: 90%
  bucket 48: 30%
  bucket 49: 10%
  bucket 44: 80%
  bucket 47: 70%
  bucket 46: 70%
  bucket 43: 100%
  Sorting block of length 48872566 for bucket 43
  (Using difference cover)
  bucket 45: 100%
  Sorting block of length 47238108 for bucket 45
  (Using difference cover)
  bucket 48: 40%
  bucket 44: 90%
  bucket 49: 20%
  bucket 47: 80%
  bucket 46: 80%
  bucket 44: 100%
  Sorting block of length 48741207 for bucket 44
  (Using difference cover)
  bucket 48: 50%
  Sorting block time: 00:00:30
Returning block of 48213614 for bucket 41
  bucket 49: 30%
Getting block 50 of 73
  Reserving size (58815359) for bucket 50
  Calculating Z arrays for bucket 50
  Entering block accumulator loop for bucket 50:
  bucket 46: 90%
  bucket 47: 90%
  bucket 48: 60%
  Sorting block time: 00:00:39
Returning block of 53955477 for bucket 37
  bucket 47: 100%
  Sorting block of length 39605286 for bucket 47
  (Using difference cover)
  bucket 49: 40%
Getting block 51 of 73
  Reserving size (58815359) for bucket 51
  Calculating Z arrays for bucket 51
  Entering block accumulator loop for bucket 51:
  bucket 50: 10%
  Sorting block time: 00:00:26
Returning block of 45514545 for bucket 42
  bucket 46: 100%
  Sorting block of length 51643620 for bucket 46
  (Using difference cover)
Getting block 52 of 73
  Reserving size (58815359) for bucket 52
  Calculating Z arrays for bucket 52
  Entering block accumulator loop for bucket 52:
  bucket 48: 70%
  bucket 52: 10%
  bucket 49: 50%
  bucket 51: 10%
  bucket 50: 20%
  bucket 48: 80%
  bucket 52: 20%
  bucket 49: 60%
  bucket 51: 20%
  bucket 50: 30%
  bucket 48: 90%
  Sorting block time: 00:00:27
Returning block of 47238109 for bucket 45
  Sorting block time: 00:00:29
Returning block of 48872567 for bucket 43
Getting block 53 of 73
  Reserving size (58815359) for bucket 53
  Calculating Z arrays for bucket 53
  Entering block accumulator loop for bucket 53:
Getting block 54 of 73
  Reserving size (58815359) for bucket 54
  Calculating Z arrays for bucket 54
  Entering block accumulator loop for bucket 54:
  bucket 52: 30%
  Sorting block time: 00:00:25
Returning block of 48741208 for bucket 44
  bucket 51: 30%
  bucket 49: 70%
Getting block 55 of 73
  Reserving size (58815359) for bucket 55
  Calculating Z arrays for bucket 55
  Entering block accumulator loop for bucket 55:
  bucket 48: 100%
  Sorting block of length 31716347 for bucket 48
  (Using difference cover)
  bucket 53: 10%
  bucket 50: 40%
  bucket 54: 10%
  Sorting block time: 00:00:20
Returning block of 39605287 for bucket 47
Getting block 56 of 73
  Reserving size (58815359) for bucket 56
  Calculating Z arrays for bucket 56
  Entering block accumulator loop for bucket 56:
  bucket 52: 40%
  bucket 55: 10%
  bucket 53: 20%
  bucket 54: 20%
  bucket 51: 40%
  bucket 49: 80%
  bucket 50: 50%
  bucket 55: 20%
  bucket 53: 30%
  bucket 56: 10%
  bucket 52: 50%
  bucket 54: 30%
  bucket 55: 30%
  bucket 53: 40%
  bucket 51: 50%
  bucket 54: 40%
  bucket 52: 60%
  bucket 49: 90%
  bucket 50: 60%
  bucket 56: 20%
  bucket 55: 40%
  bucket 53: 50%
  bucket 54: 50%
  bucket 52: 70%
  bucket 51: 60%
  bucket 55: 50%
  bucket 53: 60%
  bucket 56: 30%
  bucket 49: 100%
  Sorting block of length 32535859 for bucket 49
  (Using difference cover)
  bucket 54: 60%
  bucket 50: 70%
  Sorting block time: 00:00:37
Returning block of 51643621 for bucket 46
  bucket 52: 80%
  bucket 55: 60%
  bucket 53: 70%
  Sorting block time: 00:00:22
Returning block of 31716348 for bucket 48
  bucket 54: 70%
Getting block 57 of 73
  Reserving size (58815359) for bucket 57
  Calculating Z arrays for bucket 57
  Entering block accumulator loop for bucket 57:
Getting block 58 of 73
  Reserving size (58815359) for bucket 58
  Calculating Z arrays for bucket 58
  Entering block accumulator loop for bucket 58:
  bucket 51: 70%
  bucket 56: 40%
  bucket 55: 70%
  bucket 53: 80%
  bucket 52: 90%
  bucket 50: 80%
  bucket 54: 80%
  bucket 55: 80%
  bucket 56: 50%
  bucket 58: 10%
  bucket 57: 10%
  bucket 53: 90%
  bucket 52: 100%
  Sorting block of length 54129388 for bucket 52
  (Using difference cover)
  bucket 54: 90%
  bucket 51: 80%
  bucket 55: 90%
  bucket 56: 60%
  bucket 50: 90%
  bucket 53: 100%
  Sorting block of length 49609386 for bucket 53
  (Using difference cover)
  bucket 58: 20%
  bucket 54: 100%
  Sorting block of length 45827257 for bucket 54
  (Using difference cover)
  bucket 55: 100%
  Sorting block of length 36401971 for bucket 55
  (Using difference cover)
  bucket 57: 20%
  bucket 56: 70%
  bucket 51: 90%
  bucket 50: 100%
  Sorting block of length 37353444 for bucket 50
  (Using difference cover)
  bucket 58: 30%
  bucket 56: 80%
  bucket 57: 30%
  Sorting block time: 00:00:23
Returning block of 32535860 for bucket 49
  bucket 51: 100%
  Sorting block of length 37324777 for bucket 51
  (Using difference cover)
Getting block 59 of 73
  Reserving size (58815359) for bucket 59
  Calculating Z arrays for bucket 59
  Entering block accumulator loop for bucket 59:
  bucket 56: 90%
  bucket 58: 40%
  bucket 56: 100%
  Sorting block of length 40341212 for bucket 56
  (Using difference cover)
  bucket 57: 40%
  bucket 59: 10%
  bucket 58: 50%
  bucket 57: 50%
  Sorting block time: 00:00:19
Returning block of 36401972 for bucket 55
  bucket 59: 20%
Getting block 60 of 73
  Reserving size (58815359) for bucket 60
  Calculating Z arrays for bucket 60
  Entering block accumulator loop for bucket 60:
  bucket 58: 60%
  bucket 57: 60%
  Sorting block time: 00:00:28
Returning block of 54129389 for bucket 52
  bucket 60: 10%
  Sorting block time: 00:00:26
Returning block of 49609387 for bucket 53
Getting block 61 of 73
  Reserving size (58815359) for bucket 61
  Calculating Z arrays for bucket 61
  Entering block accumulator loop for bucket 61:
  bucket 59: 30%
Getting block 62 of 73
  Reserving size (58815359) for bucket 62
  Calculating Z arrays for bucket 62
  Entering block accumulator loop for bucket 62:
  bucket 58: 70%
  Sorting block time: 00:00:27
Returning block of 45827258 for bucket 54
Getting block 63 of 73
  Reserving size (58815359) for bucket 63
  Calculating Z arrays for bucket 63
  Entering block accumulator loop for bucket 63:
  bucket 60: 20%
  bucket 61: 10%
  bucket 57: 70%
  bucket 62: 10%
  bucket 58: 80%
  bucket 63: 10%
  bucket 59: 40%
  bucket 60: 30%
  Sorting block time: 00:00:21
Returning block of 40341213 for bucket 56
  bucket 61: 20%
Getting block 64 of 73
  Reserving size (58815359) for bucket 64
  Calculating Z arrays for bucket 64
  Entering block accumulator loop for bucket 64:
  bucket 62: 20%
  Sorting block time: 00:00:31
Returning block of 37353445 for bucket 50
  bucket 57: 80%
Getting block 65 of 73
  Reserving size (58815359) for bucket 65
  Calculating Z arrays for bucket 65
  Entering block accumulator loop for bucket 65:
  bucket 63: 20%
  bucket 60: 40%
  bucket 58: 90%
  Sorting block time: 00:00:28
Returning block of 37324778 for bucket 51
  bucket 59: 50%
  bucket 64: 10%
Getting block 66 of 73
  Reserving size (58815359) for bucket 66
  Calculating Z arrays for bucket 66
  Entering block accumulator loop for bucket 66:
  bucket 62: 30%
  bucket 61: 30%
  bucket 63: 30%
  bucket 60: 50%
  bucket 57: 90%
  bucket 64: 20%
  bucket 58: 100%
  Sorting block of length 10917741 for bucket 58
  (Using difference cover)
  bucket 62: 40%
  bucket 65: 10%
  bucket 61: 40%
  bucket 60: 60%
  bucket 59: 60%
  bucket 66: 10%
  bucket 63: 40%
  bucket 64: 30%
  Sorting block time: 00:00:04
Returning block of 10917742 for bucket 58
Getting block 67 of 73
  Reserving size (58815359) for bucket 67
  Calculating Z arrays for bucket 67
  Entering block accumulator loop for bucket 67:
  bucket 57: 100%
  Sorting block of length 56683588 for bucket 57
  (Using difference cover)
  bucket 61: 50%
  bucket 60: 70%
  bucket 62: 50%
  bucket 65: 20%
  bucket 64: 40%
  bucket 59: 70%
  bucket 67: 10%
  bucket 66: 20%
  bucket 60: 80%
  bucket 63: 50%
  bucket 61: 60%
  bucket 64: 50%
  bucket 67: 20%
  bucket 62: 60%
  bucket 60: 90%
  bucket 65: 30%
  bucket 59: 80%
  bucket 66: 30%
  bucket 64: 60%
  bucket 67: 30%
  bucket 63: 60%
  bucket 61: 70%
  bucket 60: 100%
  Sorting block of length 31587070 for bucket 60
  (Using difference cover)
  bucket 64: 70%
  bucket 67: 40%
  bucket 62: 70%
  bucket 65: 40%
  bucket 59: 90%
  bucket 66: 40%
  bucket 61: 80%
  bucket 67: 50%
  bucket 63: 70%
  bucket 64: 80%
  bucket 61: 90%
  bucket 67: 60%
  bucket 62: 80%
  bucket 59: 100%
  Sorting block of length 48679629 for bucket 59
  (Using difference cover)
  bucket 66: 50%
  bucket 65: 50%
  bucket 64: 90%
  bucket 61: 100%
  Sorting block of length 43045935 for bucket 61
  (Using difference cover)
  bucket 63: 80%
  bucket 67: 70%
  bucket 64: 100%
  Sorting block of length 34005168 for bucket 64
  (Using difference cover)
  bucket 62: 90%
  Sorting block time: 00:00:16
Returning block of 31587071 for bucket 60
  bucket 67: 80%
  bucket 66: 60%
  bucket 65: 60%
Getting block 68 of 73
  Reserving size (58815359) for bucket 68
  Calculating Z arrays for bucket 68
  Entering block accumulator loop for bucket 68:
  bucket 63: 90%
  bucket 67: 90%
  bucket 68: 10%
  bucket 66: 70%
  bucket 62: 100%
  Sorting block of length 55029876 for bucket 62
  (Using difference cover)
  bucket 65: 70%
  bucket 67: 100%
  Sorting block of length 50996897 for bucket 67
  (Using difference cover)
  bucket 68: 20%
  bucket 63: 100%
  Sorting block of length 38750622 for bucket 63
  (Using difference cover)
  bucket 68: 30%
  bucket 66: 80%
  bucket 65: 80%
  Sorting block time: 00:00:40
Returning block of 56683589 for bucket 57
Getting block 69 of 73
  Reserving size (58815359) for bucket 69
  Calculating Z arrays for bucket 69
  Entering block accumulator loop for bucket 69:
  bucket 68: 40%
  bucket 66: 90%
  bucket 65: 90%
  bucket 68: 50%
  Sorting block time: 00:00:21
Returning block of 34005169 for bucket 64
Getting block 70 of 73
  Reserving size (58815359) for bucket 70
  Calculating Z arrays for bucket 70
  Entering block accumulator loop for bucket 70:
  Sorting block time: 00:00:24
Returning block of 43045936 for bucket 61
  bucket 69: 10%
Getting block 71 of 73
  Reserving size (58815359) for bucket 71
  Calculating Z arrays for bucket 71
  Entering block accumulator loop for bucket 71:
  bucket 68: 60%
  bucket 70: 10%
  bucket 65: 100%
  Sorting block of length 51030684 for bucket 65
  (Using difference cover)
  bucket 66: 100%
  Sorting block of length 43994932 for bucket 66
  (Using difference cover)
  bucket 71: 10%
  bucket 69: 20%
  bucket 70: 20%
  bucket 68: 70%
  bucket 71: 20%
  bucket 70: 30%
  bucket 68: 80%
  Sorting block time: 00:00:38
Returning block of 48679630 for bucket 59
  bucket 69: 30%
  bucket 71: 30%
Getting block 72 of 73
  Reserving size (58815359) for bucket 72
  Calculating Z arrays for bucket 72
  Entering block accumulator loop for bucket 72:
  bucket 70: 40%
  bucket 68: 90%
  Sorting block time: 00:00:30
Returning block of 50996898 for bucket 67
  bucket 71: 40%
  bucket 70: 50%
Getting block 73 of 73
  Reserving size (58815359) for bucket 73
  Calculating Z arrays for bucket 73
  Entering block accumulator loop for bucket 73:
  bucket 68: 100%
  Sorting block of length 58170812 for bucket 68
  (Using difference cover)
  bucket 69: 40%
  bucket 72: 10%
  Sorting block time: 00:00:31
Returning block of 38750623 for bucket 63
  bucket 71: 50%
  bucket 70: 60%
  bucket 73: 10%
  bucket 71: 60%
  bucket 69: 50%
  bucket 70: 70%
  bucket 72: 20%
  Sorting block time: 00:00:40
Returning block of 55029877 for bucket 62
  bucket 73: 20%
  bucket 71: 70%
  bucket 73: 30%
  bucket 70: 80%
  bucket 72: 30%
  bucket 69: 60%
  bucket 71: 80%
  Sorting block time: 00:00:27
Returning block of 51030685 for bucket 65
  bucket 73: 40%
  bucket 72: 40%
  bucket 70: 90%
  bucket 69: 70%
  bucket 73: 50%
  bucket 71: 90%
  Sorting block time: 00:00:31
Returning block of 43994933 for bucket 66
  bucket 73: 60%
  bucket 72: 50%
  bucket 70: 100%
  Sorting block of length 11340259 for bucket 70
  (Using difference cover)
  bucket 71: 100%
  Sorting block of length 57317513 for bucket 71
  (Using difference cover)
  bucket 69: 80%
  bucket 73: 70%
  bucket 72: 60%
  bucket 69: 90%
  bucket 73: 80%
  Sorting block time: 00:00:05
Returning block of 11340260 for bucket 70
  bucket 72: 70%
  bucket 73: 90%
  bucket 69: 100%
  Sorting block of length 52075212 for bucket 69
  (Using difference cover)
  bucket 73: 100%
  Sorting block of length 51198399 for bucket 73
  (Using difference cover)
  Sorting block time: 00:00:28
Returning block of 58170813 for bucket 68
  bucket 72: 80%
  bucket 72: 90%
  bucket 72: 100%
  Sorting block of length 13319754 for bucket 72
  (Using difference cover)
  Sorting block time: 00:00:06
Returning block of 13319755 for bucket 72
  Sorting block time: 00:00:24
Returning block of 57317514 for bucket 71
  Sorting block time: 00:00:23
Returning block of 52075213 for bucket 69
  Sorting block time: 00:00:21
Returning block of 51198400 for bucket 73
Exited GFM loop
fchr[A]: 0
fchr[C]: 923117203
fchr[G]: 1565670120
fchr[T]: 2210902116
fchr[$]: 3136819154
Exiting GFM::buildToDisk()
Returning from initFromVector
Wrote 1049903843 bytes to primary GFM file: genome.1.ht2
Wrote 784204796 bytes to secondary GFM file: genome.2.ht2
Re-opening _in1 and _in2 as input streams
Returning from GFM constructor
Returning from initFromVector
Wrote 1381874123 bytes to primary GFM file: genome.5.ht2
Wrote 798493050 bytes to secondary GFM file: genome.6.ht2
Re-opening _in5 and _in5 as input streams
Returning from HGFM constructor
Headers:
    len: 3136819154
    gbwtLen: 3136819155
    nodes: 3136819155
    sz: 784204789
    gbwtSz: 784204789
    lineRate: 6
    offRate: 4
    offMask: 0xfffffff0
    ftabChars: 10
    eftabLen: 0
    eftabSz: 0
    ftabLen: 1048577
    ftabSz: 4194308
    offsLen: 196051198
    offsSz: 784204792
    lineSz: 64
    sideSz: 64
    sideGbwtSz: 48
    sideGbwtLen: 192
    numSides: 16337600
    numLines: 16337600
    gbwtTotLen: 1045606400
    gbwtTotSz: 1045606400
    reverse: 0
    linearFM: Yes
Total time for call to driver() for forward index: 00:14:30
```

```
$ hisat2 -p 13 -x genome -U vn1842.116-feynman.1.fastq -S K1.sam

25463044 reads; of these:
  25463044 (100.00%) were unpaired; of these:
    5502776 (21.61%) aligned 0 times
    15832838 (62.18%) aligned exactly 1 time
    4127430 (16.21%) aligned >1 times
78.39% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vn9399.116-feynman.1.fastq -S R1.sam 

23960736 reads; of these:
  23960736 (100.00%) were unpaired; of these:
    5008774 (20.90%) aligned 0 times
    14968247 (62.47%) aligned exactly 1 time
    3983715 (16.63%) aligned >1 times
79.10% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vn9563.116-feynman.1.fastq -S P1.sam 

21506187 reads; of these:
  21506187 (100.00%) were unpaired; of these:
    4289722 (19.95%) aligned 0 times
    13634985 (63.40%) aligned exactly 1 time
    3581480 (16.65%) aligned >1 times
80.05% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vq9370.116-feynman.1.fastq -S K2.sam 

23157219 reads; of these:
  23157219 (100.00%) were unpaired; of these:
    5238192 (22.62%) aligned 0 times
    13928783 (60.15%) aligned exactly 1 time
    3990244 (17.23%) aligned >1 times
77.38% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vq9941.116-feynman.1.fastq -S R2.sam 
25041977 reads; of these:
  25041977 (100.00%) were unpaired; of these:
    5331365 (21.29%) aligned 0 times
    15385772 (61.44%) aligned exactly 1 time
    4324840 (17.27%) aligned >1 times
78.71% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vr3166.116-feynman.1.fastq -S P2.sam 
23960300 reads; of these:
  23960300 (100.00%) were unpaired; of these:
    5634338 (23.52%) aligned 0 times
    14155488 (59.08%) aligned exactly 1 time
    4170474 (17.41%) aligned >1 times
76.48% overall alignment rate
```
```
$ hisat2 -p 13 -x genome -U vt8221.116-feynman.1.fastq -S K3.sam 
25401545 reads; of these:
  25401545 (100.00%) were unpaired; of these:
    5907538 (23.26%) aligned 0 times
    15457369 (60.85%) aligned exactly 1 time
    4036638 (15.89%) aligned >1 times
76.74% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U vu9623.116-feynman.1.fastq -S R3.sam 
25084465 reads; of these:
  25084465 (100.00%) were unpaired; of these:
    5835646 (23.26%) aligned 0 times
    14834549 (59.14%) aligned exactly 1 time
    4414270 (17.60%) aligned >1 times
76.74% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U we9405.116-feynman.1.fastq -S P3.sam 
25893545 reads; of these:
  25893545 (100.00%) were unpaired; of these:
    5537024 (21.38%) aligned 0 times
    15882599 (61.34%) aligned exactly 1 time
    4473922 (17.28%) aligned >1 times
78.62% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U wf2102.116-feynman.1.fastq -S K1_old.sam 
24118785 reads; of these:
  24118785 (100.00%) were unpaired; of these:
    5354474 (22.20%) aligned 0 times
    14542972 (60.30%) aligned exactly 1 time
    4221339 (17.50%) aligned >1 times
77.80% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U wf2706.116-feynman.1.fastq -S K2_old.sam 
24551841 reads; of these:
  24551841 (100.00%) were unpaired; of these:
    5539873 (22.56%) aligned 0 times
    14650923 (59.67%) aligned exactly 1 time
    4361045 (17.76%) aligned >1 times
77.44% overall alignment rate
```

```
$ hisat2 -p 13 -x genome -U wh6416.116-feynman.1.fastq -S K3_old.sam 
26529922 reads; of these:
  26529922 (100.00%) were unpaired; of these:
    6251168 (23.56%) aligned 0 times
    15467854 (58.30%) aligned exactly 1 time
    4810900 (18.13%) aligned >1 times
76.44% overall alignment rate
```

```
$ samtools view -S -b <file name>.sam > <file name>.bam &
```

```
$ samtools flagstat K1.bam
34169301 + 0 in total (QC-passed reads + QC-failed reads)
25463044 + 0 primary
8706257 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
28666525 + 0 mapped (83.90% : N/A)
19960268 + 0 primary mapped (78.39% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat K2.bam
31653415 + 0 in total (QC-passed reads + QC-failed reads)
23157219 + 0 primary
8496196 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
26415223 + 0 mapped (83.45% : N/A)
17919027 + 0 primary mapped (77.38% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat K3.bam
33776771 + 0 in total (QC-passed reads + QC-failed reads)
25401545 + 0 primary
8375226 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
27869233 + 0 mapped (82.51% : N/A)
19494007 + 0 primary mapped (76.74% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat R1.bam
32133154 + 0 in total (QC-passed reads + QC-failed reads)
23960736 + 0 primary
8172418 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
27124380 + 0 mapped (84.41% : N/A)
18951962 + 0 primary mapped (79.10% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat R2.bam
33859979 + 0 in total (QC-passed reads + QC-failed reads)
25041977 + 0 primary
8818002 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
28528614 + 0 mapped (84.25% : N/A)
19710612 + 0 primary mapped (78.71% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat R3.bam
34470779 + 0 in total (QC-passed reads + QC-failed reads)
25084465 + 0 primary
9386314 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
28635133 + 0 mapped (83.07% : N/A)
19248819 + 0 primary mapped (76.74% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat P1.bam
28824561 + 0 in total (QC-passed reads + QC-failed reads)
21506187 + 0 primary
7318374 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
24534839 + 0 mapped (85.12% : N/A)
17216465 + 0 primary mapped (80.05% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat P2.bam
32754853 + 0 in total (QC-passed reads + QC-failed reads)
23960300 + 0 primary
8794553 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
27120515 + 0 mapped (82.80% : N/A)
18325962 + 0 primary mapped (76.48% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat P3.bam
34874868 + 0 in total (QC-passed reads + QC-failed reads)
25893545 + 0 primary
8981323 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
29337844 + 0 mapped (84.12% : N/A)
20356521 + 0 primary mapped (78.62% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat K1_old.bam
32658566 + 0 in total (QC-passed reads + QC-failed reads)
24118785 + 0 primary
8539781 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
27304092 + 0 mapped (83.60% : N/A)
18764311 + 0 primary mapped (77.80% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat K2_old.bam
33356243 + 0 in total (QC-passed reads + QC-failed reads)
24551841 + 0 primary
8804402 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
27816370 + 0 mapped (83.39% : N/A)
19011968 + 0 primary mapped (77.44% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

```
$ samtools flagstat K3_old.bam
36167513 + 0 in total (QC-passed reads + QC-failed reads)
26529922 + 0 primary
9637591 + 0 secondary
0 + 0 supplementary
0 + 0 duplicates
0 + 0 primary duplicates
29916345 + 0 mapped (82.72% : N/A)
20278754 + 0 primary mapped (76.44% : N/A)
0 + 0 paired in sequencing
0 + 0 read1
0 + 0 read2
0 + 0 properly paired (N/A : N/A)
0 + 0 with itself and mate mapped
0 + 0 singletons (N/A : N/A)
0 + 0 with mate mapped to a different chr
0 + 0 with mate mapped to a different chr (mapQ>=5)
```

