Last Update: 2024-03-21

----------
# bioinfo.blast

## Table of Contents
- [unclassified](#unclassified)
- [updates](#updates)
[2019](#2019)
[2018](#2018)
- [togotv](#togotv)
- [references](#references)
- [word_size](#word_size)
- [query_cover](#query_cover)
- [reciprocal](#reciprocal)
- [homology](#homology) 相同
- [PSI-BLAST](#psiblast) DELTA-BLAST
- [similarity](#similarity)
- [matrix](#matrix)
  - [BLOSUM](#blosum)
- [](#)
- [blastdbcmd](#blastdbcmd)
- [bonohu](#bonohu)
- [](#)

----------

https://github.com/haruosuz/DS4GD/tree/master/2023-10

https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#ncbi-blast
Q9CD83
A0PQ23

----------


https://blast.ncbi.nlm.nih.gov/doc/blast-help/FAQ.html

Q: What is the Expect (E) Value?

For more details please see the calculations in the BLAST Course.
https://www.ncbi.nlm.nih.gov/BLAST/tutorial/Altschul-1.html

The E-value corresponding to a given bit score is simply

![](https://www.ncbi.nlm.nih.gov/BLAST/tutorial/GIFS/(3).gif)

----------

https://www.ncbi.nlm.nih.gov/books/NBK52640/
Standalone BLAST Setup for Unix - BLAST® Help - NCBI Bookshelf
Created: May 31, 2010; Last Update: August 31, 2020.

----------

https://www.arabidopsis.org/Blast/BLASToptions.jsp
BLAST Options and Defaults


https://www.ncbi.nlm.nih.gov/books/NBK279684/
Appendices - BLAST® Command Line Applications User Manual - NCBI Bookshelf

Table C3:
blastp application options. 

option	task	type	default value	description and notes

gapopen	blastp	integer	11	Cost to open a gap.

gapextend	blastp	integer	1	Cost to extend a gap.

matrix	blastp	string	BLOSUM62	Scoring matrix name.







----------

https://www.ncbi.nlm.nih.gov/books/NBK279684/#appendices.Options_for_the_commandline_a

Table C1:
Options common to all BLAST+ search applications.

Table C10:
Blastdbcmd application options. This application reads a BLAST database and produces reports.


----------
## blastdbcmd

https://www.ncbi.nlm.nih.gov/books/NBK569853/
Extracting data from BLAST databases with blastdbcmd - BLAST® Command Line Applications User Manual - NCBI Bookshelf
Created: June 23, 2008; Last Update: January 7, 2021.

```
$ blastdbcmd -entry 71022837 -db Test/mask-data-db  -outfmt "%a %l %m"
```

https://www.ncbi.nlm.nih.gov/books/NBK279684/table/appendices.T.blastdbcmd_application_opti/
Table C10: [Blastdbcmd application options. This application reads a BLAST database and produces reports.]. - BLAST® Command Line Applications User Manual - NCBI Bookshelf

option	type	default value	description and notes

outfmt




----------
## unclassified


https://www.uniprot.org/help/sequence-searches
Sequence similarity searches
Last modified December 7, 2020


https://heavywatal.github.io/bio/blast.html
BLAST - Heavy Watal

2019-10-22
https://pepper.is.sci.toho-u.ac.jp/pepper/index.php?Python%A5%D0%A5%A4%A5%AA%2F%A5%C4%A1%BC%A5%EB%2F%B0%E4%C5%C1%BB%D2%C8%E6%B3%D3%AD%A2%A1%C1blast%A4%C7%BB%EE%A4%B9
Pythonバイオ/ツール/遺伝子比較②～blastで試す - 東邦大学理学部情報科学科　山内のサイト


https://www.biostars.org/p/165218/
Where to find BLAST+ default parameters?

blastn (megablast) [for highly similar sequences]

word_size = 10
match/mismatch scores = 1, -2

You can find this information at NCBI BLAST. If you are running local BLAST with outfmt 0 or 1, you will also see the parameters at the end of your output file.

----------
## bonohu
ぼうのブログ


http://bonohu.jp/blog/blastdbcmd4newmodelorganisms.html
localBLASTのblastdbcmdを使って配列エントリの特定の領域を取得する
Written by bonohu in misc on 木 02 6月 2016.


http://bonohu.jp/blog/yetanother-blastdbcmd.html
自家製BLAST用DBから必要な配列エントリ取得
Written by bonohu in misc on 金 08 8月 2014.

http://bonohu.jp/blog/yet2another-blastdbcmd.html
自家製BLAST用DBから必要な配列エントリバッチ取得
Written by bonohu in misc on 金 14 11月 2014.

http://bonohu.jp/blog/blastdbcmd.html
fastacmdの後継者: blastdbcmd
Written by bonohu in misc on 土 15 6月 2013.


http://bonohu.jp/blog/genetablebylocalblast.html
localBLASTで遺伝子対応表作成
Written by bonohu in misc on 木 25 7月 2013.

----------

2022 年 7 月 8 日　改訂
井上 潤
http://www.fish-evol.org/BLASTplus_JI.html
BLAST+


https://riptutorial.com/ja/bioinformatics/topic/5371/blast
BLAST 関連する例
#
DNA blastdbを作成する 
nucl blastdbからfasta配列を抽出する 
blastdbからGIとタクシーを抽出する 
ubuntuに爆風をインストールする 



----------
## 
DELTA-BLAST

https://www.ncbi.nlm.nih.gov/books/NBK569839/
BLAST+ features - BLAST® Command Line Applications User Manual - NCBI Bookshelf

DELTA-BLAST: A tool for sensitive protein sequence search
DELTA-BLAST uses RPS-BLAST to search for conserved domains matching to a query, constructs a PSSM from the sequences associated with the matching domains, and searches a sequence database. Its sensitivity is comparable to PSI-BLAST and does not require several iterations of searches against a large sequence database. See the cookbook for more information.

https://www.ncbi.nlm.nih.gov/books/NBK279685/
Performing a DELTA-BLAST search - BLAST® Command Line Applications User Manual - NCBI Bookshelf

----------
## psiblast
PSI-BLAST


https://biomedicalhacks.com/2020-08-04/psi-blast/
PSI-BLASTでホモログ配列を検索する【PSSMやProfileの計算法も】

https://doi.org/10.7875/togotv.2017.047
PSI-BLASTを使って、タンパク質の遠い系統的関連性を発見する 2017 | TogoTV

https://doi.org/10.7875/togotv.2011.066
PSI-BLASTで類縁の配列を調べ倒す 2011


https://www.ncbi.nlm.nih.gov/books/NBK2590/
PSI-BLAST Tutorial - Comparative Genomics - NCBI Bookshelf


https://rothlab.ucdavis.edu/genhelp/psiblast.html

https://bip.weizmann.ac.il/education/materials/gcg/psiblast.html

% psiblast -INfile2=PIR,SWPLUS

% psiblast -INfile1=hsp70.msf{*}

% psiblast -in1=calm.msf{calmhuman} -jump=calm.msf{*}

% psiblast -INfile1=hsp70.msf{*} -JUMPstart=hsp70.msf{*}

% psiblast -INfile1=hsp70.msf{s*} -JUMPstart=hsp70.msf{*}

% psiblast -INfile1=hsp70.msf{s*} -JUMPstart=hsp70.msf{s*}


https://www.ncbi.nlm.nih.gov/books/NBK279690/
BLAST® Command Line Applications User Manual - NCBI Bookshelf

Specifying a sequence as the multiple sequence alignment master in psiblast

Ignoring the consensus sequence in the multiple sequence alignment in psiblast

January 7, 2021.
https://www.ncbi.nlm.nih.gov/books/NBK569863/
Specifying a sequence as the multiple sequence alignment master in psiblast

psiblast -in_msa align1 -db pataa -msa_master_idx 3 

January 7, 2021.
https://www.ncbi.nlm.nih.gov/books/NBK569852/
Ignoring the consensus sequence in the multiple sequence alignment in psiblast

psiblast -in_msa align1 -db pataa -ignore_msa_master 


3.0 years ago by nataliagru1
https://www.biostars.org/p/60306/#460646
Multiple Psi-Blast Iterations From Command Line Using Remote Database

psiblast -query /dir/queryfile.fa -db /dir/example_database -evalue 0.001 -num_iterations 0 -outfmt 0 -out /dir/exp1_outfmt0.blast -out_pssm /dir/example.pssm -save_pssm_after_last_round

When you specify -num_iterations 0 PSI BLAST will iteratively search until convergence or until no new sequences are found.


9.8 years ago
https://www.biostars.org/p/85805/
Psiblast Fasta Formatted Output

./psiblast -query DsbA.fa -db Proteobacteria -num_iterations=6 -evalue=0.005 -out psiblastDsbAOut -out_pssm=PSSMDsbA


https://pubmed.ncbi.nlm.nih.gov/19396961/
Review FEMS Microbiol Rev
. 2009 May;33(3):657-87. doi: 10.1111/j.1574-6976.2009.00168.x.
The diversity of conjugative relaxases and its application in plasmid classification
María Pilar Garcillán-Barcia 1, María Victoria Francia, Fernando de la Cruz
https://academic.oup.com/femsre/article/33/3/657/591359

Method used for relaxase analysis
Relaxases are usually multidomain proteins, in which the relaxase domain always occupies the N-terminal position. Thus, PSI-BLAST (Altschul et al., 1997) searches (P=1e–4 unless otherwise stated) were carried out using the N-terminal 300 amino acids of prototype relaxases from each MOB family as was done previously by Francia et al. (2004).

Figure 2 updates the phylogenetic tree of the family. The PSI-BLAST search was carried out using the threshold value P=1e–8 and converged in the fourth iteration. Using a lower threshold, such as the standard P=1e–4, retrieved transposases of the IS91 family (Garcillan-Barcia & de la Cruz, 2002). This fact is interesting in itself and suggests that MOBF relaxases and rolling-circle transposases are phylogenetically related, albeit remotely. 

----------
## similarity

On the definition of sequence identity
https://lh3.github.io/2018/11/25/on-the-definition-of-sequence-identity
BLAST identity


https://www.ncbi.nlm.nih.gov/pubmed/23749753
Curr Protoc Bioinformatics. 2013 Jun;Chapter 3:Unit3.1. doi: 10.1002/0471250953.bi0301s42.
An introduction to sequence similarity ("homology") searching.
Pearson WR1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3820096/
INFERRING HOMOLOGY FROM SIMILARITY
- We infer homology when two sequences or structures share more similarity than would be expected by chance; 
- Sequence similarity search tools like BLAST, FASTA, and HMMER minimize false positives (non-homologs with significant scores; Type I errors), but do not make claims about false negatives (homologs with non-significant scores; Type II errors).
- For local sequence alignments, like those produced by BLAST, Smith-Waterman, or FASTA, the expected distribution of similarity scores by chance (scores for alignments between two random or unrelated sequences) is described by the extreme value distribution p(s≥x)≤1−exp(−exp(−x)) (Fig. 1), 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3820096/figure/F1/
極値分布

July 14, 2011.
https://www.ncbi.nlm.nih.gov/books/NBK62051/
BLAST Glossary - BLAST® Help - NCBI Bookshelf
- BLOSUM
https://www.ncbi.nlm.nih.gov/books/NBK62051/def-item/blosum/
- E value
The Expectation value or Expect value represents the number of different alignments with scores equivalent to or better than S that is expected to occur in a database search by chance. The lower the E value, the more significant the score and the alignment.
- similarity
The extent to which nucleotide or protein sequences are related. Similarity between two sequences can be expressed as percent sequence identity and/or percent positive substitutions.
https://www.ncbi.nlm.nih.gov/books/NBK62051/def-item/similarity/

https://binf.snipcademy.com/lessons/pairwise-alignment/identity-similarity
Identity and Similarity - a quantitative measure

https://www.biostars.org/p/195017/
Question: BLAST: Identity % and Similarity %

----------
## matrix

### BLOSUM
https://en.wikipedia.org/wiki/BLOSUM

https://www.ncbi.nlm.nih.gov/pubmed/1438297
Proc Natl Acad Sci U S A. 1992 Nov 15;89(22):10915-9.
Amino acid substitution matrices from protein blocks.
Henikoff S1, Henikoff JG.
Methods for alignment of protein sequences typically measure similarity by using a substitution matrix with scores for all possible exchanges of one amino acid with another. 

https://www.ddbj.nig.ac.jp/blast-help.html
BLAST ヘルプ
SCORING MATRIX：アミノ酸置換表
デフォルトでは BLOSUM62 が設定されます。

----------
## homology
https://en.wikipedia.org/wiki/Homology_%28biology%29
https://ja.wikipedia.org/wiki/相同
収斂進化）のかもしれない。そのような配列は、類似しているが、相同ではない。このように相同性はあるかないかのどちらかであって、「相同性が高い」「ホモロジーが低い」といった表現は誤りである。これはたいていの場合「配列類似性が高い」「シミラリティーが低い」と言い換えることで適切な表現になる[2]。

https://www.ncbi.nlm.nih.gov/books/NBK20255/
Evolutionary Concept in Genetics and Genomics - Sequence - Evolution - Function - NCBI Bookshelf
For some reason, this simple concept tends to get extremely muddled when applied to protein and DNA sequences [695]. Phrases like “sequence (structural) homology”, “high homology”, “significant homology”, or even “35% homology” are as common, even in top scientific journals, as they are absurd, considering the above definition. 

----------
## reciprocal

Created: 8/10/2018; last update: 2018-10-26
https://jvanheld.github.io/using_IFB_NNCR/practicals/blast_proteome/blast_proteome.html
Using BLAST on the command line
Jacques van Helden
https://jvanheld.github.io/using_IFB_NNCR/practicals/blast_proteome/blast_proteome.html#finding_best_hits
Finding best hits
With the ranked blast hits, use the awk command to select:
```
- the best hit for each protein of the query organism (query BH);
- the best hit for each protein of the reference organism (subject BH);
- the bidirectional best hit (BBH)

## Best hits per query sequence
BLAST_QUERY_BH=Bacillus_subtilis__vs__Escherichia_coli_blastp_query_BH.tsv
awk '$14 == 1' ${BLAST_HITS_RANKED} > ${BLAST_QUERY_BH}

## Best hits per subject sequence
BLAST_SUBJECT_BH=Bacillus_subtilis__vs__Escherichia_coli_blastp_subject_BH.tsv
awk '$15 == 1' ${BLAST_HITS_RANKED} > ${BLAST_SUBJECT_BH}

## Bidirectional best hits
BLAST_BBH=Bacillus_subtilis__vs__Escherichia_coli_blastp_BBH.tsv
awk '$14 == 1 && $15 == 1' ${BLAST_HITS_RANKED} > ${BLAST_BBH}

## Count number of best hits
wc -l  ${BLAST_QUERY_BH} ${BLAST_SUBJECT_BH} ${BLAST_BBH}
```


Aug 4, 2017
https://github.com/santiagosnchez/rbh
rbh.pl
- Finds reciprocal-best-hit single-copy matches between two al-by-all BLAST searches
- It will find the reciprocal-best single-copy genes between two sets of BLAST outputs in format 7. If FASTA files are provided it will generate FASTA files with the sequence pairs found. It will also generate a list of gene names. A threshold for e-values can be provided using the -filter argument.


Mar 22, 2017
https://github.com/cboursnell/crb-blast
CRB-BLAST
- Conditional Reciprocal Best BLAST - high confidence ortholog assignment.
- CRB-BLAST is a novel method for finding orthologs between one set of sequences and another. This is particularly useful in genome and transcriptome annotation.
- CRB-BLAST initially performs a standard reciprocal best BLAST. It does this by performing BLAST alignments of query->target and target->query. Reciprocal best BLAST hits are those where the best match for any given query sequence in the query->target alignment is also the best hit of the match in the reverse (target->query) alignment.


04-26-2012, 02:39 PM
http://seqanswers.com/forums/showthread.php?t=19576
reciprocal blast - SEQanswers
```
1) sort the first file because when a list is sorted you can be certain a match could not be behind where you are in the list

sort -u File_B_A > File_A_B_sorted

2) reverse the second list

awk '{print $2,$1}' File_B_A > File_B_A_rev

3) sort the second file

sort -u File_B_A_rev > File_B_A_rev_sorted

4) see what the files have in common

comm -12 File_A_B_sorted File_B_A_rev_sorted > File_AB_RBH
```

2008
http://archive.sysbio.harvard.edu/CSB/resources/computational/scriptome/UNIX/Protocols/Sequences.html
FAS Center: Sequence Analysis Protocols (UNIX)
Reciprocal Best Hit BLAST
perl

20110103
http://koke.asrc.kanazawa-u.ac.jp/HOWTO/ReciprocalBLASTBestHit.html
Reciprocal Blast best hitの抽出
SQL (Structured Query Language)


https://widdowquinn.github.io/2018-03-06-ibioic/02-sequence_databases/05-blast_for_rbh.html
05 - Reciprocal BLAST Hits (RBH)
Python

![](https://widdowquinn.github.io/2018-03-06-ibioic/02-sequence_databases/images/05-01_orthologues.png)
![](https://widdowquinn.github.io/2018-03-06-ibioic/02-sequence_databases/images/05-02_paralogues.png)



May 19, 2020
https://doi.org/10.1101/2020.05.04.077222
Progress in quickly finding orthologs as reciprocal best hits | bioRxiv


https://www.ncbi.nlm.nih.gov/pubmed/31727128
Genome Biol. 2019 Nov 14;20(1):238. doi: 10.1186/s13059-019-1832-y.
OrthoFinder: phylogenetic orthology inference for comparative genomics.
Emms DM1, Kelly S2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6857279/
Fig. 1
Right-hand side: Reciprocal best hits (RBH) based on gene similarity scores that are monotonic with branch length and the orthology relationships inferred from these scores using standard heuristics (orthologs inferred using RBHs and co-orthology identified from within species hits better than closest RBH [8, 16]). 


https://pubmed.ncbi.nlm.nih.gov/27894995/
Mol Phylogenet Evol
. 2017 Feb;107:338-344. doi: 10.1016/j.ympev.2016.11.016. Epub 2016 Nov 26.
Short branches lead to systematic artifacts when BLAST searches are used as surrogate for phylogenetic reconstruction
Amanda A Dick 1, Timothy J Harlow 2, J Peter Gogarten 3
https://www.sciencedirect.com/science/article/abs/pii/S1055790316303773?via%3Dihub
SBA can be detected by examining reciprocal best BLAST hits among a larger group of taxa, including the known closest phylogenetic neighbors.


https://pubmed.ncbi.nlm.nih.gov/25013894/
PLoS One
. 2014 Jul 11;9(7):e101850. doi: 10.1371/journal.pone.0101850. eCollection 2014.
Quickly finding orthologs as reciprocal best hits with BLAT, LAST, and UBLAST: how much do we miss?
Natalie Ward 1, Gabriel Moreno-Hagelsieb 1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4094424/
- Reciprocal Best Hits (RBH) are a common proxy for orthology in comparative genomics. Essentially, a RBH is found when the proteins encoded by two genes, each in a different genome, find each other as the best scoring match in the other genome. 
- Introduction
The purpose of this work is to evaluate the speed, number and quality of orthologs mapped as reciprocal best hits (RBHs) as detected and scored using NCBI's BLAST [1], [2], the Blast-Like Alignment Tool (BLAT) [3], LAST [4], and UBLAST [5]. 



----------
## query_cover

https://www.ncbi.nlm.nih.gov/Web/Newsltr/V15N2/BLView.html
NCBI News:Volume 14, Issue 2|UniGene

Query Coverage	
the percent of the query length that is included in the aligned segments. This is calculated over all segments as with the Tot Score.

https://sites.google.com/site/niigatadnabarcoding/dnabakodono-jian-suowo-ti-yanshiyou
下記のQuery cover（くいぇりーかゔぁ）とは、BLAST（ぶらぁすと）検索にかけた塩基配列であるQuery（くいぇりー）の長さに対して、BLAST検索にひっかかった塩基配列であるSbjct（さぶじぇくつ）と重複している長さの割合をいう。

Asked 19th Feb, 2016
https://www.researchgate.net/post/What_makes_query_cover_low_in_BLAST-N_search
What makes "% query cover" low in BLAST-N search?

https://pubmed.ncbi.nlm.nih.gov/24358388/
J Microbiol Biol Educ
. 2013 Dec 2;14(2):238-43. doi: 10.1128/jmbe.v14i2.637. eCollection 2013.
A Small-Group Activity Introducing the Use and Interpretation of BLAST
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3867762/
% Query coverage is the percentage of the query sequence length that is included in the alignment. When running a BLAST search, often the sequences returned will align with only part of the queried sequence; therefore % query coverage has a significant impact on the E value—the greater the query coverage, the lower the E-value and the better the match.

----------
## word_size

https://www.ncbi.nlm.nih.gov/books/NBK279684/
Appendices - BLAST® Command Line Applications User Manual - NCBI Bookshelf
```
option	task(s)	type	default value	description and notes
word_size	megablast	integer	28	Length of initial exact match.
```

http://www.metagenomics.wiki/tools/blast/default-word-size
BLAST word-size - Metagenomics
default word-sizes


2018年2月20日
http://bioinfo-dojo.net/2018/02/20/blast_exact-match/
blast 使い方 完全一致の連続領域を探索するには？ – バイオインフォ 道場 [bioinfo-Dojo]
blastn オプション word_size

2018-01-25
https://www.ddbj.nig.ac.jp/column/blast_doc.html
相同性検索プログラムBLASTの内部構造
アルゴリズム
最初のステップである検索用文字列リストの作成方法は，タンパク質のアミノ酸配列の場合とＤＮＡの塩基配列の場合で若干異なります。タンパク質のアミノ酸配列の場合は，デフォールトの文字列の長さ（wordsize：Ｗ）が３です。
ＤＮＡの塩基配列の場合は，デフォールトの文字列の長さ（Ｗ）が１２です。


----------
## references

https://blast.ncbi.nlm.nih.gov/Blast.cgi
BLAST: Basic Local Alignment Search Tool

https://www.ncbi.nlm.nih.gov/BLAST/tutorial/Altschul-1.html
The Statistics of Sequence Similarity Scores

The statistics of local sequence comparison

In the limit of sufficiently large sequence lengths m and n, the statistics of HSP scores are characterized by two parameters, K and lambda. Most simply, the expected number of HSPs with score at least S is given by the formula

We call this the E-value for the score S.

Database searches

   The E-value of equation (1) applies to the comparison of two proteins of lengths m and n. How does one assess the significance of an alignment that arises from the comparison of a protein of length m to a database containing many different proteins, of varying lengths? 

----------

## togotv

http://togotv.dbcls.jp/ja/genome.html#p1
塩基配列やIDを取得したい

https://doi.org/10.7875/togotv.2007.023
2007-09-26 BLAST検索でヒットしたエントリ群のmulti fastaファイルを取得する

http://togotv.dbcls.jp/ja/genome.html#p2
似ている配列があるか調べたい

https://doi.org/10.7875/togotv.2017.023
2017-03-21 NCBI BLASTの使い方 〜基本編〜 2017







http://togotv.dbcls.jp/ja/genome.html#p3
自分のマシンでBLAST検索をする

http://doi.org/10.7875/togotv.2017.031
Local BLAST の使い方〜導入・準備編(MacOSX版)〜 2017

http://doi.org/10.7875/togotv.2017.045
Local BLAST の使い方 〜検索実行・オプション〜 (MacOSX版) 2017

----------

## updates

## 2019

https://twitter.com/kfuku0502/status/1158298311885041664
Kenji Fukushima on Twitter: "BLASTの-max_target_seqsは実は”最初にヒットしたN個”が返ってきてしまうので、best hitの取得を意図して-max_target_seqs 1とするのは誤りとしていた論文と、いやそれはタイがあったときだけで、通常はきちんとbest hitを返すとする反論。 https://t.co/6F6BTFBnU0 https://t.co/6hg9zziYHi"
5:46 PM · Aug 5, 2019
BLASTは-evalueオプションにも誤解が広まっていて、-evalueでのフィルタリングは初期段階でラフに算出されたE valueに基づいて行われるので、最終的に我々が目にするE valueでのカットオフにはなっていない、というもの。

https://twitter.com/pjacock/status/1082030796301615104
Peter Cock on Twitter: "Oh, will check later but multiple HSPs for a single hit is a different issue and too be expected. BLAST+ 2.8.1 has new experimental setting -subject_besthit) which may be of interest… https://t.co/P4blPbWaVS"
4:46 PM - 6 Jan 2019  

https://twitter.com/NCBI/status/1081248978417668101
NCBI Staff on Twitter: "BLAST+ 2.8.1 is released with new databases and better performance https://t.co/17Dho3S0gE"
1:00 PM - 4 Jan 2019
https://ncbiinsights.ncbi.nlm.nih.gov/2019/01/04/blast-2-8-1-with-new-databases-and-better-performance/
A new option (-subject_besthit)
-max_target_seqs option


## 2018

https://twitter.com/enuroi/status/1077399713542893574
Ken Kuroki on Twitter: "BLASTのベストヒットに関して開発側からの返答 1.特にギャップ多い配列でヒットを取りこぼす→バグで2.8.1で修正 2.同じスコアならDB上の順番で並ぶ(max_target_seqs指定していたらヒットが変わる)→仕様 3.evalueカットオフは複数ステップで絞り込む仕組み→ややずれることがあるが、これは別の問題… https://t.co/lzMiQfr16U"
10:04 PM - 24 Dec 2018
https://twitter.com/tom6931/status/1077243599019040768
Tom Madden on Twitter: "Read our reply to "Misunderstood parameters of NCBI BLAST impacts the correctness of bioinformatics workflows." https://t.co/zWjL9UaHhW"
11:44 AM - 24 Dec 2018
https://academic.oup.com/bioinformatics/advance-article/doi/10.1093/bioinformatics/bty1026/5259186
Reply to the paper: Misunderstood parameters of NCBI BLAST impacts the correctness of bioinformatics workflows | Bioinformatics | Oxford Academic

https://twitter.com/RaulGoch/status/1072832901182439425
Raúl González-Pech on Twitter: "Remember all the commotion around the -max_target_seqs option from @NCBI #BLAST? Well, it turns out that something similar happens with #evalue... If you wanna know more about it have a look at our (@timstep1383 @dorkyM) just published letter: https://t.co/O1EboWEdOq"
7:37 AM - 12 Dec 2018

https://twitter.com/pjacock/status/1071006136093081600
Peter Cock on Twitter: "BLAST+ uses database order is tie-breaker, but its a bit backwards https://t.co/SXkELN8PxN - continuing the saga of just how -max_target_seqs can surprise you, and the Shah et al 2018 letter"
6:38 AM - 7 Dec 2018

https://twitter.com/pjacock/status/1058404683922968576
Peter Cock on Twitter: "More on BLAST and the maximum alignment limits settings (-max_target_seqs and friends) https://t.co/kYUf4RlF76 - can anyone reproduce the claim in Shar et al. (2018) about database order affecting BLAST output?"
1:05 PM - 2 Nov 2018

https://blastedbio.blogspot.com/2018/11/blast-max-alignment-limits-repartee-two.html
Blasted Bioinformatics!?: BLAST max alignment limits repartee - part two

https://twitter.com/search?q=max_target_seqs

https://twitter.com/pathogenomenick/status/1044992493606129664
Nick Loman on Twitter: "This statement illustrates the in(s)anity of trying to assign taxonomic ID from BLAST best-hit though ... you basically cannot do this.… https://t.co/5CxW2CLGwm"
12:50 PM - 26 Sep 2018

https://twitter.com/Tyu_Shi/status/1044945487550238720
Tyu_Shi on Twitter: "いい加減blastallからblast+に移行しないといけないかなと思ってた数年前にPeterさんのこの記事読んでまだしばらくはblastall使っていようと考え直したわけである。その後しばらくしたらそもそもBLAST/BLAST+を使う機会自体が減った。"
9:43 AM - 26 Sep 2018

https://twitter.com/pjacock/status/1044941938036756480
Peter Cock on Twitter: "Well past time @NCBI - fixing the output format-specific switches was on my 2014 BLAST+ Christmas wish list https://t.co/GbIPPU3eHG - the discovery about what max_target_seqs really did came a year later https://t.co/FOpO7RKz2K… https://t.co/GtAneLvB2y"
9:29 AM - 26 Sep 2018

https://twitter.com/macmanes/status/1044922332425408512
Matt MacManes on Twitter: "Maybe it's time for NCBI to give us a flag for returning only the best hit, since we now know not to use "-max_target_seqs 1"."
8:11 AM - 26 Sep 2018

https://twitter.com/windowmoon/status/1044942161295200256
窓月㌠・CC-BY on Twitter: "BLASTの「--max_target_seqs N」オプションは、「トップNヒット」を返すオプションではない！これ知ってる人どれだけいるのかな。私は知ってるのでNを1になんてしません。トップヒットがほしいときは、100とか1000くらいにして、得られた結果の中からスコア最大のものを選ぶことにしています。"
9:29 AM - 26 Sep 2018

https://twitter.com/enuroi/status/1044856329884626944
Ken Kuroki on Twitter: "BLASTでmax_target_seqsの引数を設定すると、ベストn件のヒットじゃなくて、閾値を超えた（ベストとは限らない）最初のn件を返してくるから気をつけましょうねという話です。… "
3:48 AM - 26 Sep 2018

なお「最初のn件」というのはデータベースに入っている順番で決まるとのこと。まあそうでしょうけど。

https://twitter.com/sjackman/status/1044730788128800768
Shaun Jackman on Twitter: ""Misunderstood parameter of NCBI BLAST impacts the correctness of bioinformatics workflows" tl;dr > The invocation using the parameter "-max_target_seqs 1" simply returns the first good hit found in the database, not the best hit as one would assume. https://t.co/gaNgMCEer0"
7:30 PM - 25 Sep 2018

https://twitter.com/strnr/status/1044684254347767808
Stephen Turner on Twitter: "Misunderstood parameter of NCBI BLAST impacts the correctness of bioinformatics workflows https://t.co/gtbYgY5y4i Seems the importance of this can't be understated: 1/n… https://t.co/buZ54l2aki"
4:25 PM - 25 Sep 2018

https://twitter.com/AstrobioMike/status/1044680662530187264
Mike Lee on Twitter: "This is important for those of us using command-line BLAST. `-max_target_seqs` not doing what most of us think: https://t.co/8BfQooNsDe"
4:10 PM - 25 Sep 2018

Good old "blastall -v 1 -b 1" seems to work as expected  and returns the best hit.

## 2017

https://vi-pseudo.hatenablog.com/entry/20170119/1484792838
コマンドラインでのblastnの使い方 - vi_pseudo’s diary

さらに、20-30塩基のプライマー配列を扱うのに、わざわざFASTAフォーマットのファイルを作るのもできれば避けたい。つまり、コマンドラインで済ませたい。
```
echo -e ">sample\nNNNNNNNNNNNNNNNNNNNNNNNNNNN" | blastn -task blastn-short -db foo_bar.fa
```

----------


