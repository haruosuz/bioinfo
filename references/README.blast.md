Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2019-07

----------
# blast

## Table of Contents
- [featuring](#featuring)
- [updates](#updates)
[2019](#2019)
[2018](#2018)

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

## BLOSUM
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

## updates

## 2019

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

http://togotv.dbcls.jp/ja/genome.html#p1
塩基配列やIDを取得したい

http://doi.org/10.7875/togotv.2007.023
BLAST検索でヒットしたエントリ群のmulti fastaファイルを取得する

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
## references

- DS4GD
  - https://github.com/haruosuz/DS4GD
  - https://github.com/haruosuz/DS4GD/tree/master/2019
  - https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#pairwise-sequence-alignment
  - https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#pairwise-global-alignment-of-protein-sequences-using-the-needleman-wunsch-algorithm


----------

