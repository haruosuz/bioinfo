Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-12

----------

# Bioinformatics
バイオインフォマティクス

## Table of Contents
- [blast](#blast)
- [2018](https://github.com/haruosuz/bioinfo/tree/master/2018)
- [2016](https://github.com/haruosuz/bioinfo/tree/master/2016)
- [updates](#updates)
- [bird](#bird)
- [books](#books)
- [EMBOSS](#emboss)
- [E-utilities](#e-utilities)
- [gff](#gff)
- [gtf](#gtf)
- [link](#link)
- [refseq](#refseq)
- [uniprot](#uniprot)
- [jsbi-nintei](#jsbi-nintei)
- [twitter](#twitter)

----------

https://github.com/lexnederbragt/developments-in-next-generation-sequencing
Developments in next generation sequencing

![](https://flxlexblog.files.wordpress.com/2016/07/developments_in_high_throughput_sequencing.jpg)

----------


https://bit.riken.jp/ja/howtostudybioinformatics/
How to study bioinformatics - Laboratory for Bioinformatics ResearchLaboratory for Bioinformatics Research

https://twitter.com/search?q=iNaturalist%20の


https://www.biostars.org/p/17696/
Difference Between "Pipeline" And "Workflow" ?
https://en.wikipedia.org/wiki/Bioinformatics_workflow_management_system
Galaxy: initially targeted at genomics


https://www.conference-service.com/conferences/bioinformatics.html
Conferences and Meetings on Genomics and Bioinformatics

http://glab.hzau.edu.cn/APBC2019/
APBC2019: The 17th Asia Pacific Bioinformatics Conference
January 14-16, 2019 | Wuhan • China

## updates

### 2019


### Kablammo
http://kablammo.wasmuthlab.org/

https://twitter.com/yokuyama/status/1122298158480904192
奥山雄大（ver.関西） on Twitter: "blastの結果を可視化するウェブツールKablamm うわーこれすごいわ。感動する。上がコチャルメルソウで下がチャルメルソウ。ゲノムの構造がひと目で分かる。そして、核心に迫るためにはチャルメルソウのゲノムはもう少し伸ばさないとあかんことがわかった。 https://t.co/vFCAVCuwxQ… https://t.co/dPCSUMdU75"
8:35 PM - 27 Apr 2019
http://kazumaxneo.hatenablog.com/entry/2019/04/10/073000
blast結果を可視化するwebツール Kablammo - macでインフォマティクス

![](https://cdn-ak.f.st-hatena.com/images/fotolife/k/kazumaxneo/20190409/20190409230150.png)


https://twitter.com/Acinetobazza/status/1107892222257696768
Dr Mark Schultz on Twitter: "I have written an introductory tutorial on using edirect command line tools to query NCBI's Entrez database for downloading read-sets and genbank assemblies https://t.co/t7Yv0ZirCp"
2:31 AM - 19 Mar 2019
https://github.com/schultzm/entrez_direct_tut/blob/master/README.md
entrez_direct_tut/README.md at master · schultzm/entrez_direct_tut

https://twitter.com/RodrigoATCG/status/1108105740663836675
Rodrigo Martinez on Twitter: "For way too long we have been using the 'cost of sequencing' graph (left) to tell stories about what may come in the world of DNA. Here's a newer version that hopefully triggers conversations about what's to come in consumer genomics - the emerging #socialgenome Thoughts?… https://t.co/o7Tzos6bGa"
4:39 PM - 19 Mar 2019
![](https://pbs.twimg.com/media/D2DH1sWWsAAkDQ3.jpg)
March 6, 2019
https://www.veritasgenetics.com/next-genomics-revolution-era-social-genome
Blog | Next in the Genomics Revolution: The Era of the Social Genome | Veritas Genetics

### 2018

2018/07/21
http://www.kenkyuu2.net/cgi-biotech2012/biotechforum.cgi?mode=view;Code=7092
BioTechnicalフォーラム [プログラミングの勉強]
バイオインフォマティシャンの需要が高まっていますが、
最初に習得すべき言語は何がいいでしょうか？
現在どの言語が多用されているのでしょうか。


https://github.com/hiromasaono/training/tree/master/180612_KeioSFC
今日から使える便利な生命科学系公共データベース・ウェブツール
小野 浩雅
2018年6月12日(火)

January 17, 2018
https://github.com/yuifu/ajacs68/blob/master/README.md
NGSデータから新たな知識を導出するためのデータ解析リテラシー
尾崎 遼 Haruka Ozaki

### 2017

https://biosciencedbc.jp/gadget/human/170901_higashi_170831.pdf
Hi-C解析(2017NGSハンズオン講習会-2017年9月1日)
2017年9月1日
国立遺伝学研究所 東光一

https://twitter.com/bonohu/status/1104623240775852032
bonohu on Twitter: "“How to study bioinformatics / シーケンスデータ解析などバイオインフォマティクスを学びたい方” / “How to study bioinformatics - Laboratory for Bioinformatics ResearchLaboratory for Bioinformatics Research” https://t.co/naIWZd7ajG"
1:01 AM - 10 Mar 2019
https://bit.riken.jp/ja/howtostudybioinformatics/
How to study bioinformatics - Laboratory for Bioinformatics ResearchLaboratory for Bioinformatics Research

https://twitter.com/vsbuffalo/status/1098269961145901056
Vince Buffalo on Twitter: "I'm teaching my partner bash. The biggest "wows!" have been: 1. control-r, type part of a past command, control-r again and again to cycle through history. 2. cd - 3. tmux for work on a server. 4. control-a / control-e / option arrow for jumping around. 5. hitting tab a lot."
12:15 PM - 20 Feb 2019


https://twitter.com/ecSeq/status/982476057805754368
ecSeq Bioinformatics on Twitter: "NGS Code Snippet: Convert FASTQ to FASTA on the command line https://t.co/xsdzmU52LS"
12:32 AM - 7 Apr 2018
https://www.ecseq.com/support/ngs-snippets/convert-fastq-to-fasta-on-the-command-line
```
paste - - - - < file.fq | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > file.fa
```

https://twitter.com/NIBB_Public/status/1062911424635105281
基礎生物学研究所広報室 on Twitter: "基礎生物学研究所 ゲノムインフォマティクス・トレーニングコース2019春「RNA-seq入門 - NGSの基礎からde novo 解析まで」申し込み受付中です。準備編と実践編がございます。https://t.co/vANmoL9BHX"
10:33 PM - 14 Nov 2018
http://www.nibb.ac.jp/gitc/2019-1st/
http://www.nibb.ac.jp/collabo/trainingcourse/course.html
１．準備編 ： UNIX・R・NGSの基本 -- 2019年2月21日（木）10:00～ 22日（金）17:30 
２．実践編 ： RNA-seq解析パイプライン -- 2019年3月14日（木） 10:00～ 15日（金）17:30 

2018-08-04
https://qiita.com/antiplastics/items/add3f8438cbe6b2b594e
どの生物種までGO解析ができるか

https://twitter.com/3Bgoripachi/status/1025225950902931456
ゴリぱち on Twitter: "ゲノム解析を学びたい人にとって有益な情報が詰まっている記事でした。 「NGSデータから新たな知識を導出するためのデータ解析リテラシー」 https://t.co/t5GGcj7mNC"
11:44 PM - 2 Aug 2018

https://twitter.com/eyemiyake/status/1023007444669095936
三宅正裕 MD, PhD, MPH @ 眼科 on Twitter: "eLIFE, 2018 ゲノムデータを操作変数として用いることで観察研究データから因果関係を評価するMendelian Randomization。そろそろやってみたいのでとりあえずこの論文で勉強しています
臨床、ゲノム、疫学のいずれもに知見とデータがあるうちの強みにマッチしそう。 https://t.co/CMSPLf3Dfk"
8:49 PM - 27 Jul 2018

https://wired.jp/2018/03/13/solve-genomics-with-blockchain/
「ゲノム解析」のデータはブロックチェーンで守れるか｜WIRED.jp

----------
## bird

http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/
ストリーミング配信 - BIRD
平成21年度ゲノムリテラシー講座
講師：村上　勝彦
分子系統解析（講義３）
https://www.youtube.com/watch?v=K9Fy1LrtGco
http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_4_3.pdf

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
The Entrez Programming Utilities (E-utilities)

- [Entrez Programming Utilities Help - NCBI Bookshelf](https://www.ncbi.nlm.nih.gov/books/NBK25501/)
  - [Entrez Direct: E-utilities on the UNIX Command Line - Entrez Programming Utilities Help - NCBI Bookshelf](https://www.ncbi.nlm.nih.gov/books/NBK179288/)
  - [The E-utilities In-Depth: Parameters, Syntax and More - Entrez Programming Utilities Help - NCBI Bookshelf](https://www.ncbi.nlm.nih.gov/books/NBK25499/)
    - [Table 1 – Valid values of &retmode and &rettype for EFetch (null = empty string)](https://www.ncbi.nlm.nih.gov/books/NBK25499/table/chapter4.T._valid_values_of__retmode_and/?report=objectonly)

| Record Type | &rettype | &retmode |
|:-----------:|:--------:|:--------:|
| Additional option for db = nuccore |
| db = nuccore, nucest, nucgss, protein or popset |
| FASTA | fasta | text |
| GenBank flat file with full sequence (contigs) | gbwithparts | text |
| CDS nucleotide FASTA | fasta_cds_na | text |
| CDS protein FASTA | fasta_cds_aa | text |
| db = sequences |
| FASTA | fasta | text |

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
## [gff](http://genome.ucsc.edu/FAQ/FAQformat.html#format3)

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
## [gtf](http://genome.ucsc.edu/FAQ/FAQformat.html#format4)

2017.06.11
https://bi.biopapyrus.jp/rnaseq/mapping/gtf.html
GTFファイル | 遺伝子アノテーションファイルの処理

2017-06-10
http://kazumaxneo.hatenablog.com/entry/2017/06/10/160701
GTFとGFFフォーマット - macでインフォマティクス

http://staffblog.amelieff.jp/entry/2015/07/31/143358
フォーマットもいろいろ - アメリエフのブログ

21 of November, 2013
http://cell-innovation.nig.ac.jp/wiki/tiki-index.php?page=GTF
NGS Surfer's Wiki | GTF

2013-02-05
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
## twitter

- https://twitter.com/DrKatHolt Kat Holt (@DrKatHolt) | Twitter
- https://twitter.com/phylogenomics Jonathan Eisen (@phylogenomics) | Twitter
- https://twitter.com/pathogenomenick Nick Loman (@pathogenomenick) | Twitter
- https://twitter.com/strnr Stephen Turner (@strnr) | Twitter
- https://twitter.com/jcamthrash Cameron Thrash (@jcamthrash) | Twitter
- https://twitter.com/mason_lab Christopher Mason (@mason_lab) | Twitter
- https://twitter.com/WvSchaik Willem van Schaik (@WvSchaik) | Twitter
- https://twitter.com/torstenseemann Torsten Seemann (@torstenseemann) | Twitter
- 
- https://twitter.com/KojiYahara Koji Yahara @ National Institute of Infectious Diseases.

微生物の研究
- https://twitter.com/Tyu_Shi Tyu_Shi (@Tyu_Shi) | Bioinformaticsの研究者をしてます。
- https://twitter.com/level3defless Koichi Higashi (@level3defless) | NIG, Microbiology
- https://twitter.com/hornistyf Y. Furuta (@hornistyf) | バクテリアのゲノム比較解析とか、DNAメチル化とか。
- https://twitter.com/yokadzaki Yusuke Okazaki (@yokadzaki) | 湖に生息する微生物の研究をしてます。
- https://twitter.com/kmoooooog くまがい (@kmoooooog) | 博士(環境学) JAMSTECで海洋微生物学の研究
- https://twitter.com/ysknishimura Yosuke Nishimura (@ysknishimura) | （メタ）ゲノム情報を用いて海洋微生物の研究をしています。
- 
- https://twitter.com/npoJSBi JSBi (@npoJSBi) | 日本バイオインフォマティクス学会（JSBi）
- https://twitter.com/bioinfowakate 生命情報科学若手の会 (@bioinfowakate) | Twitter
- https://twitter.com/chemo_wakate ケモインフォマティクス若手の会公式 (@chemo_wakate) | Twitter
- https://twitter.com/dbcls ライフサイエンス統合データベースセンター (@dbcls) | Twitter
- https://twitter.com/biohackathon
- https://twitter.com/togotv
- https://twitter.com/togotv_bot
- https://twitter.com/bonohu
https://dbcls.rois.ac.jp/~bono/
坊農秀雅のウェブサイト
http://bonohu.jp/blog/
ぼうのブログ
- https://twitter.com/chalkless Nakazato T. (@chalkless) | Twitter
- https://twitter.com/yayamamo
- https://twitter.com/h_ono
- https://twitter.com/inutano
- https://twitter.com/meso_cacase
- https://twitter.com/tktym toshiaki katayama (@tktym) | Twitter
- https://twitter.com/skwsm
- https://twitter.com/tkwsm tk （風来風来亭） (@tkwsm) | カエル、ホヤ、ナメクジウオ、サンゴ、二枚貝、ギボシムシの研究を通じて、今はヌルヌルに興味があります。
- https://twitter.com/masanaoAtTheLab Masanao Sato/佐藤昌直 (@masanaoAtTheLab) | Systems biology/Virology/Genomics
- https://twitter.com/dritoshi
- https://twitter.com/fukunagaTsu 福永　津嵩 (@fukunagaTsu) | Twitter
- https://twitter.com/m_hama Michiaki Hamada 浜田道昭 (@m_hama) | Twitter
- https://twitter.com/yaskaz
- https://twitter.com/sounaka
- https://twitter.com/kazumachack macでインフォマティクス
- https://twitter.com/sesejun
- https://twitter.com/ogishima
- https://twitter.com/dancing_infobio
- https://twitter.com/maskot1977
- https://twitter.com/mkasahara
- https://twitter.com/gaou_ak
- https://twitter.com/nzmyachie
- https://twitter.com/iwasakiw
- https://twitter.com/yuifu
- https://twitter.com/antiplastics もじゃもじゃのほう (Koki Tsuyuzaki) (@antiplastics) | Twitter
- https://twitter.com/kztakemoto
- https://twitter.com/windowmoon
- https://twitter.com/YoshiKawahara Yoshihiro Kawahara (@YoshiKawahara) | つくばの農学系バイオインフォマティシャン。
- https://twitter.com/drk0311 内藤健 (@drk0311) | Twitter
- https://twitter.com/kfuku0502 Kenji Fukushima (@kfuku0502) | carnivorous plants + convergent evolution
- https://twitter.com/mishimahryk 三嶋博之 (@mishimahryk) | 長崎大学人類遺伝学 属性: 人類遺伝学/NGS/次世代シークエンサー/Ruby/BioRuby/R/バイオインフォマティクス/歯科医師
- https://twitter.com/ma_ko
- https://twitter.com/yokonaga405
- https://twitter.com/marimiya_clc
- https://twitter.com/sum_ichi
- https://twitter.com/Yh_Taguchi 田口善弘 (@Yh_Taguchi) | 中央大学理工学部物理学科教授。専門はバイオインフォマティクス。
- https://twitter.com/leeswijzer MINAKA Nobuhiro (@leeswijzer) | オモテの仕事は生物統計学の研究者，ウラの仕事は進化生物学者です．

https://twitter.com/WMicrobiomeDay
World Microbiome Day (@WMicrobiomeDay) | Twitter
June 27th is a day to celebrate all things Microbiome around the world. The 1st World Microbiome Day was launched by APC Microbiome Ireland in 2018.

- https://twitter.com/Med_Microbe_bot 感染微生物bot (@Med_Microbe_bot)
- https://twitter.com/biseibutsu__bot 微生物bot (@biseibutsu__bot)
- https://twitter.com/kamosumon_bot 醸して学ぶbot (@kamosumon_bot)
- https://twitter.com/cuteimouto_bot 微生物学専攻妹bot (@cuteimouto_bot)
- https://twitter.com/bactery_bot ばくてり～細菌擬人化bot～ (@bactery_bot)
- https://twitter.com/AAD_Japan Save ABx Japan (@AAD_Japan) | 抗菌薬、薬剤耐性菌




----------






