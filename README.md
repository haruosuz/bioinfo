Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-11

----------

# Bioinformatics
バイオインフォマティクス

## Table of Contents
- [updates](#updates)
- [blast](#blast)
- [books](#books)
- [EMBOSS](#emboss)
- [E-utilities](#e-utilities)
- [gff](#gff)
- [gtf](#gtf)
- [link](#link)
- [refseq](#refseq)
- [uniprot](#uniprot)
- [jsbi-nintei](#jsbi-nintei)

----------

https://github.com/lexnederbragt/developments-in-next-generation-sequencing
Developments in next generation sequencing

![](https://flxlexblog.files.wordpress.com/2016/07/developments_in_high_throughput_sequencing.jpg)

----------
## updates
- [2018](https://github.com/haruosuz/bioinfo/tree/master/2018)
- [2016](https://github.com/haruosuz/bioinfo/tree/master/2016)

----------
## blast


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

http://doi.org/10.7875/togotv.2017.023
NCBI BLASTの使い方 〜基本編〜 2017

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
## books

http://apprize.info/data/bioinformatics/index.html
Bioinformatics Data Skills (2015)

https://github.com/haruosuz/books/blob/master/bds/README.md

### 2004/05/10
![](https://www.kspub.co.jp/book/detail/images/153855-1.gif)

http://www.kspub.co.jp/book/detail/1538559.html
タンパク質機能解析のためのバイオインフォマティクス

http://www.bic.kyoto-u.ac.jp/toh/text.html
第２章　タンパク質の分子進化
2.4 分子進化の性質(3) - 保存のサイト特異性
2.4.3 アミノ酸残基の保存と変化
https://www.ncbi.nlm.nih.gov/pubmed/9010921
Protein Eng. 1996 Dec;9(12):1067-82.
Glutathione-independent prostaglandin D synthase as a lead molecule for designing new functional proteins.
Toh H1, Kubodera H, Nakajima N, Sekiya T, Eguchi N, Tanaka T, Urade Y, Hayaishi O.

第３章　タンパク質の 生化学的機能の解析
3.1 相同アミノ酸配列比較解析の手順
3.1.2 アラインメントからの情 報抽出
B 分子系統樹を利用した機能解析
https://www.ncbi.nlm.nih.gov/pubmed/10871367
Nucleic Acids Res. 2000 Jun 15;28(12):2353-62.
Bacterial cryptochrome and photolyase: characterization of two photolyase-like genes of Synechocystis sp. PCC6803.
Hitomi K1, Okamoto K, Daiyasu H, Miyashita H, Iwai S, Toh H, Ishiura M, Todo T.


----------
## emboss

https://osdn.net/projects/jambo/docs/emboss_tutorial/...
EMBOSS を用いた配列解析への手引き

http://emboss.open-bio.org/html/use/ch04s03.html
4.3. Working with Alignments
Prev 	Chapter 4. EMBOSS User Tutorial

4.3.3. Exercise: Making a Dotplot

% dottup

http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf
2-1. 配列解析基礎
Basic Sequence Analysis
坊農 秀雅 

dottup

----------
## E-utilities

https://sites.google.com/site/scriptofbioinformatics/r-tong-ji-guan-xi/rutiles-e-utilities-r
rutiles / E-utilities（R） - script of bioinformatics
E-utilitiesはNCBIが提供するAPIのサービス。
rutilesはRでE-utilitesを使うためのパッケージ。

2016年07月14日
https://qiita.com/joemphilips/items/767c67524e4b7e328834
Biopython を利用したNCBIのEntrez データベースへのアクセス

2015年12月04日
http://itnika.seesaa.net/article/430657489.html
PubMed：E-utirities API hack 2

2015年11月29日
http://itnika.seesaa.net/article/430447225.html
PubMed検索方法：Web Apiの勉強中

http://sy41211.hatenablog.com/entry/2015/11/28/085754
NCBIの "E-utilities" が結構便利な件 - バイオインフォマティクス初心者の日常

2015年01月16日
https://allabout.co.jp/gm/gc/450789/2/
Ruby／Rubyの基礎知識
APIからJSONデータを取得する(2ページ目)

----------
## gff
gff3

2017年08月05日
https://qiita.com/MaedaTaro_Umiushi/items/48c628ca332abade1e98
Convert GFF3 to MSS for DDBJ submission - Qiita

2017年06月26日
https://qiita.com/MaedaTaro_Umiushi/items/4b9d37d23614e53a3cdf
gff3 ↔gtf の変換 - Qiita

2017-07-25
http://kazumaxneo.hatenablog.com/entry/2017/07/25/234808
BEDOPSを使いVCF, GTF, GFF などを BED に変換 する。 - macでインフォマティクス
GFF（GFF3）をbedに変換する。

Apr 23 2014
門田幸二(かどた こうじ)
http://www.iu.a.u-tokyo.ac.jp/~kadota/20140423_kadota.pdf

GFF3形式ファイルの例(シロイヌナズナ; TAIR10_GFF3_genes.gff)
遺伝子ごとに、どの染色体 のどの座標上に存在するの かなどの情報を含むタブ区 切りテキストファイル

----------
## gtf

2017.06.11
https://bi.biopapyrus.jp/rnaseq/mapping/gtf.html
GTFファイル | 遺伝子アノテーションファイルの処理

2017-06-10
http://kazumaxneo.hatenablog.com/entry/2017/06/10/160701
GTFとGFFフォーマット - macでインフォマティクス

http://staffblog.amelieff.jp/entry/2015/07/31/143358
フォーマットもいろいろ - アメリエフのブログ

https://cell-innovation.nig.ac.jp/surfers/GTF_difference.html
GTFファイルの細かな違い

----------
## link


https://biopapyrus.jp


http://bioinfo-dojo.net
バイオインフォ 道場 [bioinfo-Dojo] – 日々、バイオインフォマティクス修行。

https://twitter.com/hashtag/museomejp
https://sites.google.com/site/museumbioinfo/
Japan Museum Bioinformatics (Museomics) Working Group

https://twitter.com/ecSeq
ecSeq Bioinformatics

https://github.com/stephenturner/oneliners
Bioinformatics one-liners

https://www.sbj.or.jp/sbj/sbj_bioinformatics.html
生物工学会誌 –『バイオインフォマティクスを使い尽くす秘訣教えます!』 | 公益社団法人 日本生物工学会

http://data.dbcls.jp/~bono/lectures.html
Dr. Bono's website
Lectures
講義や講演

----------
## refseq

https://bi.biopapyrus.jp/db/refseq.html
RefSeq | 詳細な注釈づけられている冗長性のない核酸データベース

NC_	DNA	1 個体のデータから集められた完全なゲノム配列
NZ_	DNA	不完全なショットガン配列

http://d.hatena.ne.jp/yuifu/20110426/1303820667
Entrez Gene と RefSeq の関係 - micro*macro

NC_	Genomic	Complete genomic molecule, reference assembly
NZ_b	Genomic	Unfinished WGS

https://www.biostars.org/p/209159/
What is the difference between NZ_ and NC_ identifiers at NCBI?

NC - "Complete genomic molecule, usually reference assembly"
NZ - "Unfinished WGS"

https://www.ncbi.nlm.nih.gov/books/NBK21091/table/ch18.T.refseq_accession_numbers_and_mole/
NC_	Genomic	Complete genomic molecule, usually reference assembly
NZ_b	Genomic	Complete genomes and unfinished WGS data

----------
## uniprot

### uniref

http://www.uniprot.org/help/uniref
UniRef90 is built by clustering UniRef100 sequences with 11 or more residues using the CD-HIT algorithm (Li W. and Godzik A., Bioinformatics, 22: 1658-1659, 2006) such that each cluster is composed of sequences that have at least 90% sequence identity to and 80% overlap with the longest sequence (a.k.a. seed sequence) of the cluster.

https://ja.wikipedia.org/wiki/Swiss-Prot
UniProtの冗長性のないリファレンス (UniRef) のデータベース群[8]
UniRef は、高速な類似性検索に供するため類縁性の強い配列を単一の配列データにまとめたデータベース群である。 

http://www.uniprot.org/help/fasta-headers
UniRef

	>UniqueIdentifier ClusterName n=Members Tax=TaxonName TaxID=TaxonIdentifier RepID=RepresentativeMember

- TaxonName is the scientific name of the lowest common taxon shared by all UniRef cluster members.

### uniref90

Here are some reference papers.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4029085/ Paramecium bursaria transcriptome
We performed similarity searches of the 10,557 P. bursaria unigenes against the Swiss-Prot and UniRef90 protein sequence databases [21] using BLASTX [22] with the E-value cutoff of 1e-5 and assigned the functional annotations of the most similar protein sequences. Of the 10,557 unigenes, 7,051 (67%) had matches with 4,102 unique records in the Swiss-Prot database; 9,536 (90%) had matches with 8,189 unique records in the UniRef90 database. The species distribution of the BLASTX best hits in the UniRef90 database showed that 8,710 (91.7%) of the 9,502 hits had top matches with sequences from P. tetraurelia, followed by Tetrahymena thermophila with 153 (1.6%) best BLASTX hits.

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/ Lactobacillus
We assigned functional annotations to each protein family by merging all the functional annotations of proteins belonging to the same protein family (deleting uninformative annotations such as “hypothetical protein”). We used multiple databases as follows: Clusters of Orthologous Groups (COG [http://www.ncbi.nlm.nih.gov/COG/; 40]), JCVI/CMR [http://cmr.jcvi.org/; 41]), SEED (http://www.theseed.org/ [42]), UniProtKB/Uniref90 (http://www.uniprot.org), Virulence Factors Database (VFDB) (http://www.mgc.ac.cn/VFs/ [43]), Pfam (http://pfam.sanger.ac.uk), and Gene Ontology (GO) (http://www.geneontology.org). We performed a similarity search of the 136,962 Lactobacillus proteins against the Uniref90 and VFDB protein sequence databases using BLASTP (E-value < 1e−5 and >50% coverage) and assigned the functional annotations of the most similar protein sequences. We searched protein sequences against the Pfam library of hidden Markov models (HMMs) using HMMER (http://hmmer.janelia.org/) and converted Pfam accession numbers to GO terms using “pfam2go” mapping (http://www.geneontology.org/external2go/pfam2go).

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4462011/ Clostridium difficile and Clostridium sordellii
Gene functional annotation

We assigned functional annotations to each protein family by merging all the functional annotations of proteins belonging to the same family. To gain different aspects and maximize coverage, protein families were annotated by multiple databases. We performed BLASTP searches of protein sequences against NCBI nr (non-redundant) database, COG [62], KEGG [39], UniProtKB/Uniref90 [96], Virulence Factors Database (VFDB) [60], and assigned the functional annotations of the most similar protein sequences in each database. We converted protein_ID to subsystems (Category, Subcategory, Subsystem, and Role) in SEED database [97]. We also searched protein sequences against the Pfam library of hidden Markov models (HMMs) [98] using HMMER, and mapped Gene Ontology (GO) terms to Pfam entries using the ‘pfam2go’ mapping provided by the GO consortium [99].

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2940326/ Campylobacter Pan-Genomes
Annotation and Enrichment Tests

Gene ontology (Ashburner et al. 2000) (GO) annotations were obtained for each orthologous cluster using HMMER searches (Eddy 2008) on the Pfam A and B databases (Finn et al. 2010) and using Blast against the Uniref90 database (Suzek et al. 2007). Best hits were then mapped to GO terms using the pfam2go mapping (Hunter et al. 2009) and the GOA database (Barrell et al. 2009), respectively. GO enrichment tests were conducted using GO::TermFinder (Boyle et al. 2004) with false discovery rate (FDR) correction and a 5% significance level.



----------


https://github.com/haruosuz/r4bioinfo/tree/master/R_Avril_Coghlan#pairwise-sequence-alignment

- DDBJ [配列の記載に用いる略号](http://www.ddbj.nig.ac.jp/sub/code-j.html)
  - [塩基](https://www.ddbj.nig.ac.jp/ddbj/code.html#nucleotide)
  - [アミノ酸](https://www.ddbj.nig.ac.jp/ddbj/code.html#amino)
- 2017.06.03 [配列解析 | 塩基配列解析とアミノ酸配列解析](https://bi.biopapyrus.jp/seq/)
  - 配列
    - [置換行列 | スコアマトリックスの作り方](https://bi.biopapyrus.jp/seq/score-matrix.html)
  - [アラインメント | 核酸あるいはアミノ酸配列を複数並べ類縁度を可視化](https://bi.biopapyrus.jp/seq/alignment/)
    - [グローバルアライメントを求める Needleman–Wunsch アルゴリズム](https://bi.biopapyrus.jp/seq/alignment/needleman–wunsch.html)
    - [ローカルアラインメントを求める Smith-Waterman アルゴリズム](https://bi.biopapyrus.jp/seq/alignment/smith-waterman.html)
- [2-1. 配列解析基礎 Basic Sequence Analysis 坊農 秀雅](http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf)
- 24 July 2012 [Aritalab:Lecture/Bioinformatics/Alignment - Metabolomics.JP](http://metabolomics.jp/wiki/Aritalab:Lecture/Bioinformatics/Alignment)

- 2009.9.12 [バイオインフォマティクス基礎講座 配列解析 川端 猛](http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_3_1.pdf)
- [バイオインフォマティクス-ゲノム配列から機能解析へ-第3章3.4節配列アラインメントにおけるスコア行列とギャップペナルティの使用方法](http://qiita.com/kino-tohoku/items/d4e0441e7ed6222106fa)

https://www.dna.bio.keio.ac.jp/lecture/bioinfo/bioinformatics-3.pdf
バイオインフォマティクス (第3回)
慶應義塾大学生命情報学科 榊原康文



----------
## jsbi-nintei

https://www.jsbi.org/nintei/
Japanese Society for Bioinformatics - JSBi :: バイオインフォマティクス技術者認定試験

http://www.jsbi.org/nintei/books/
Japanese Society for Bioinformatics - JSBi :: 参考図書

https://www.jsbi.org/nintei/29/
３．平成２９年度問題と解説
問題と解答(PDF形式)
解説(PDF形式)

https://www.jsbi.org/nintei/28/
３．平成２８年度問題と解説
問題と解答(PDF形式) 
解説（PDF形式）

https://www.jsbi.org/nintei/27/ 
３．平成２７年度問題と解説
問題と解答(PDF形式) 
解説（PDF型式） 

https://www.jsbi.org/nintei/26/
３．平成２６年度試験問題＆解答
問題と解答 1.5MB
解説集371KB

https://www.jsbi.org/nintei/25/
３．平成２５年度試験問題＆解答
問題と解答 11MB
解説集 287KB

https://www.jsbi.org/nintei/24/
３．平成２４年度試験問題＆解答
問題と解答 2.5MB
解説集 275KB

https://www.jsbi.org/nintei/23/
３．平成２３年度試験問題＆解答
問題と解答 3.0MB
解説集 1.1MB

https://www.jsbi.org/nintei/22/
３．平成２２年度試験問題＆解答
問題と解答
解説集

https://www.jsbi.org/nintei/h21/
３．平成２１年度試験問題＆解答
問題と解答
解説集

https://www.jsbi.org/nintei/h20/
３．平成２０年度試験問題＆解答
問題と解答

https://www.jsbi.org/nintei/h19/
３．平成19年度試験問題＆解答
問題と解答


----------


