Last Update: 2020-08

----------
# bioinfo.blast

## Table of Contents
- [featuring](#featuring)
- [updates](#updates)
[2019](#2019)
[2018](#2018)
- [togotv](#togotv)
- [references](#references)
- [similarity](#similarity)
- [matrix](#matrix)
  - [BLOSUM](#blosum)
- [word_size](#word_size)
- [query_cover](#query_cover)
- [reciprocal](#reciprocal)

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

2020 年 6 月 10 日　改訂
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

15 6月 2013.
http://bonohu.jp/blog/blastdbcmd.html
ぼうのブログ
fastacmdの後継者: blastdbcmd


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
## featuring

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

## togotv

http://togotv.dbcls.jp/ja/genome.html#p1
塩基配列やIDを取得したい

https://doi.org/10.7875/togotv.2007.023
2007-09-26 BLAST検索でヒットしたエントリ群のmulti fastaファイルを取得する

http://togotv.dbcls.jp/ja/genome.html#p2
似ている配列があるか調べたい

https://doi.org/10.7875/togotv.2017.023
2017-03-21 NCBI BLASTの使い方 〜基本編〜 2017

http://doi.org/10.7875/togotv.2011.066
PSI-BLASTで類縁の配列を調べ倒す 2011

http://togotv.dbcls.jp/ja/genome.html#p3
自分のマシンでBLAST検索をする

http://doi.org/10.7875/togotv.2017.031
Local BLAST の使い方〜導入・準備編(MacOSX版)〜 2017

http://doi.org/10.7875/togotv.2017.045
Local BLAST の使い方 〜検索実行・オプション〜 (MacOSX版) 2017

https://bonohu.wordpress.com/2014/11/14/yet2another-blastdbcmd/
自家製BLAST用DBから必要な配列エントリバッチ取得 | ぼうのブログ(Backup)

https://bonohu.wordpress.com/2014/08/08/yetanother-blastdbcmd/
自家製BLAST用DBから必要な配列エントリ取得 | ぼうのブログ(Backup)

https://bonohu.wordpress.com/2013/07/25/genetablebylocalblast/
localBLASTで遺伝子対応表作成 | ぼうのブログ(Backup)

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


----------


