# DGE
## DGE with Deseq2

```
$ gffread ../GCF_000001405.40_GRCh38.p14_genomic.gff -T -o annotation.gtf
```

```
$ featureCounts -g gene_name -a annotation.gtf -o feature_counts.txt *_sorted.bam


        ==========     _____ _    _ ____  _____  ______          _____  
        =====         / ____| |  | |  _ \|  __ \|  ____|   /\   |  __ \ 
          =====      | (___ | |  | | |_) | |__) | |__     /  \  | |  | |
            ====      \___ \| |  | |  _ <|  _  /|  __|   / /\ \ | |  | |
              ====    ____) | |__| | |_) | | \ \| |____ / ____ \| |__| |
        ==========   |_____/ \____/|____/|_|  \_\______/_/    \_\_____/
	  v2.0.3

//========================== featureCounts setting ===========================\\
||                                                                            ||
||             Input files : 12 BAM files                                     ||
||                                                                            ||
||                           K1_old_sorted.bam                                ||
||                           K1_sorted.bam                                    ||
||                           K2_old_sorted.bam                                ||
||                           K2_sorted.bam                                    ||
||                           K3_old_sorted.bam                                ||
||                           K3_sorted.bam                                    ||
||                           P1_sorted.bam                                    ||
||                           P2_sorted.bam                                    ||
||                           P3_sorted.bam                                    ||
||                           R1_sorted.bam                                    ||
||                           R2_sorted.bam                                    ||
||                           R3_sorted.bam                                    ||
||                                                                            ||
||             Output file : feature_counts.txt                               ||
||                 Summary : feature_counts.txt.summary                       ||
||              Paired-end : no                                               ||
||        Count read pairs : no                                               ||
||              Annotation : annotation.gtf (GTF)                             ||
||      Dir for temp files : ./                                               ||
||                                                                            ||
||                 Threads : 1                                                ||
||                   Level : meta-feature level                               ||
||      Multimapping reads : not counted                                      ||
|| Multi-overlapping reads : not counted                                      ||
||   Min overlapping bases : 1                                                ||
||                                                                            ||
\\============================================================================//

//================================= Running ==================================\\
||                                                                            ||
|| Load annotation file annotation.gtf ...                                    ||
||    Features : 2206931                                                      ||
||    Meta-features : 49306                                                   ||
||    Chromosomes/contigs : 531                                               ||
||                                                                            ||
|| Process BAM file K1_old_sorted.bam...                                      ||
||    Single-end reads are included.                                          ||
||    Total alignments : 32658566                                             ||
||    Successfully assigned alignments : 11499260 (35.2%)                     ||
||    Running time : 0.31 minutes                                             ||
||                                                                            ||
|| Process BAM file K1_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 34169301                                             ||
||    Successfully assigned alignments : 11637240 (34.1%)                     ||
||    Running time : 0.32 minutes                                             ||
||                                                                            ||
|| Process BAM file K2_old_sorted.bam...                                      ||
||    Single-end reads are included.                                          ||
||    Total alignments : 33356243                                             ||
||    Successfully assigned alignments : 12385577 (37.1%)                     ||
||    Running time : 0.31 minutes                                             ||
||                                                                            ||
|| Process BAM file K2_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 31653415                                             ||
||    Successfully assigned alignments : 10494705 (33.2%)                     ||
||    Running time : 0.30 minutes                                             ||
||                                                                            ||
|| Process BAM file K3_old_sorted.bam...                                      ||
||    Single-end reads are included.                                          ||
||    Total alignments : 36167513                                             ||
||    Successfully assigned alignments : 13335299 (36.9%)                     ||
||    Running time : 0.33 minutes                                             ||
||                                                                            ||
|| Process BAM file K3_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 33776771                                             ||
||    Successfully assigned alignments : 11128216 (32.9%)                     ||
||    Running time : 0.32 minutes                                             ||
||                                                                            ||
|| Process BAM file P1_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 28824561                                             ||
||    Successfully assigned alignments : 10267418 (35.6%)                     ||
||    Running time : 0.28 minutes                                             ||
||                                                                            ||
|| Process BAM file P2_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 32754853                                             ||
||    Successfully assigned alignments : 11367631 (34.7%)                     ||
||    Running time : 0.31 minutes                                             ||
||                                                                            ||
|| Process BAM file P3_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 34874868                                             ||
||    Successfully assigned alignments : 13685962 (39.2%)                     ||
||    Running time : 0.33 minutes                                             ||
||                                                                            ||
|| Process BAM file R1_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 32133154                                             ||
||    Successfully assigned alignments : 11487296 (35.7%)                     ||
||    Running time : 0.30 minutes                                             ||
||                                                                            ||
|| Process BAM file R2_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 33859979                                             ||
||    Successfully assigned alignments : 12349943 (36.5%)                     ||
||    Running time : 0.31 minutes                                             ||
||                                                                            ||
|| Process BAM file R3_sorted.bam...                                          ||
||    Single-end reads are included.                                          ||
||    Total alignments : 34470779                                             ||
||    Successfully assigned alignments : 12139748 (35.2%)                     ||
||    Running time : 0.31 minutes                                             ||
||                                                                            ||
|| Write the final count table.                                               ||
|| Write the read assignment summary.                                         ||
||                                                                            ||
|| Summary of counting results can be found in file "feature_counts.txt.summ  ||
|| ary"                                                                       ||
||                                                                            ||
\\============================================================================//
```

feature_counts.txt.summary

|Status	|K1_old_sorted.bam	|K1_sorted.bam	|K2_old_sorted.bam	|K2_sorted.bam	|K3_old_sorted.bam	|K3_sorted.bam	|P1_sorted.bam	|P2_sorted.bam	|P3_sorted.bam	|R1_sorted.bam	|R2_sorted.bam	|R3_sorted.bam|
|-------|-------------------|---------------|-------------------|---------------|-------------------|---------------|---------------|--------------------|---------------|---------------|---------------|-------------|
|Assigned	|11499260	|11637240	|12385577	|10494705	|13335299	|11128216	|10267418	|11367631	|13685962	|11487296	|12349943	|12139748|
|Unassigned_Unmapped	|5354474	|5502776	|5539873	|5238192	|6251168	|5907538	|4289722	|5634338	|5537024	|5008774	|5331365	|5835646|
|Unassigned_Read_Type	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_Singleton	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_MappingQuality	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_Chimera	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_FragmentLength	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_Duplicate	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_MultiMapping	|12761120	|12833687	|13165447	|12486440	|14448491	|12411864	|10899854	|12965027	|13455245	|12156133	|13142842	|13800584|
|Unassigned_Secondary	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_NonSplit	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_NoFeatures	|2561277	|3719303	|1758126	|2980706	|1578732	|3840119	|2958569	|2265421	|1629251	|3013594	|2527456	|2145141|
|Unassigned_Overlapping_Length	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0	|0|
|Unassigned_Ambiguity	|482435	|476295	|507220	|453372	|553823	|489034	|408998	|522436	|567386	|467357	|508373	|549660|

