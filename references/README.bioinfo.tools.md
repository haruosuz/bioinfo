# bioinfo.tools
バイオインフォマティクス・ツール

## Table of Contents
- [updates](#updates)
- [convert](#convert)
- [bioconda](#bioconda)
- [dotplot](#dotplot)
- [E-utilities](#e-utilities)
- [KofamScan](#kofamscan)
- [seqkit](#seqkit)
- [dbcls](#dbcls)
  - [colil](#colil)
- [togo](#togo)
  - [togows](#togows)
  - [togotv](#togotv)
- [mmseq2](#mmseq2)
- [diamond](#diamond)
- [homology search](#homology-search)
- [rebase](#rebase)
- [shell](#shell)
- [clust](#clust)
vsearch
- [video](#video)

----------
## shell

Jun 10, 2019
https://github.com/stephenturner/oneliners
Bioinformatics one-liners


2 days ago
https://github.com/crazyhottommy/bioinformatics-one-liners/blob/master/README.md
bioinformatics-one-liners
```
#Reverse complement a sequence (I use that a lot when I need to design primers)
echo 'ATTGCTATGCTNNNT' | rev | tr 'ACTG' 'TGAC'

#split a multifasta file into single ones with csplit:
csplit -z -q -n 4 -f sequence_ sequences.fasta /\>/ {*}  

# Split a multi-FASTA file into individual FASTA files by awk
awk '/^>/{s=++d".fa"} {print > s}' multi.fa
```


2020.04.18
https://bi.biopapyrus.jp/os/linux/bash.html
bash | Linux で利用できるシェルスクリプト（文字列・配列・構文などの取り扱い方）

bash 文字列
```
# を利用することで、文字列の長さを求めることができる。
dna="TAGCATGCAGTCTATTATCGGATCGATGCTGACTAGTCAGCT"
echo ${#dna}
## 42

echo ${dna:0:5}
## TAGCA

echo ${dna//T/U}
## UAGCAUGCAGUCUAUUAUCGGAUCGAUGCUGACUAGUCAGCU

echo ${DNA/T/U}
## UAGCATGCAGTCTATTATCGGATCGATGCTGACTAGTCAGCT
```

8.6 years ago
https://www.biostars.org/p/17680/
Useful Bash Commands To Handle Fasta Files

----------
## seqkit
https://bioinf.shenwei.me/seqkit/

https://github.com/shenwei356/seqkit

https://twitter.com/search?q=seqkit%20lang%3Aja&f=live


2019/07/30
https://ultrabem-branch3.com/informatics/commands_mac/seqkit_mac
Mac seqkit コマンド: オプション、正規表現など

http://kazumaxneo.hatenablog.com/entry/2018/12/20/210947
seqkitに新しく追加されたコマンドを確認する - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/08/08/235042
fastq / fastaの操作ツール seqkit - macでインフォマティクス

3:25 AM · Jul 3, 2017
https://twitter.com/windowmoon/status/881579535891693568
窓月㌠ on Twitter: "FASTQ/FASTAの配列処理、自作スクリプトで済ませている人も多いと思うけど、Seqtk https://t.co/wpEVtJzo7g とVSEARCH https://t.co/J9zhDhM3QB で処理するのが圧倒的おすすめである。何しろ速い。"

https://twitter.com/yokadzaki/status/842645031756341248
以前書いたseqkitの記事で、FASTAを長さで抽出できないことをぼやいていたら「お困りの点を解決しました！」というメールが作者から来た。seqkit seq に -mで最小長、-Mで最大長を指定するだけというやばすぎるシンプルさ
4:53 PM · Mar 17, 2017

https://yokazaki.hatenablog.com/entry/2017/01/16/160652
seqkitを用いたFASTAのフィルタリング・ソート - yokaのblog

http://catway.jp/bioinformatics/index.html
Tips for NGS Data Analysis
次世代DNAシーケンサーのデータ解析技術 (2013/02/01)
二階堂愛
http://catway.jp/bioinformatics/qc/randomsampling.html
FASTA/BAMからランダムにリードを取り出す | Tips for NGS Data Analysis
Fastq/a file からランダムにリードを取り出す
次にマッピング前のデータから配列を除くことを想定して、fastq file からのリードのサンプリングについて述べる。ここでは seqtk を利用する。
注意: seqtk は samtools にも付属している (samtools/misc/seqtk)がこれには、sample オプションがない。混同しないよう注意が必要である。

----------
## seqtk
https://github.com/lh3/seqtk

http://kazumaxneo.hatenablog.com/entry/2017/08/01/204851
fastq / fastaの操作ツール seqtk - macでインフォマティクス


----------
## homology search

https://www.scl.kyoto-u.ac.jp/Appli/
アプリケーション一覧
```
DIAMOND	ホモロジー検索	diamond
MMseq2	ホモロジー検索、配列クラスタリング	mmseq2
ghostx	ホモロジー検索	ghostx
```

http://kazumaxneo.hatenablog.com/entry/2019/01/20/073000
pblat: マルチスレッドに対応したblat - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/05/23/102457
超高速でDNAとタンパク質のアライメントを行う AC-DIAMOND - macでインフォマティクス

----------
## clust
vsearch

https://pubmed.ncbi.nlm.nih.gov/31437182/
PLoS One
. 2019 Aug 22;14(8):e0221068. doi: 10.1371/journal.pone.0221068. eCollection 2019.
TreeCluster: Clustering biological sequences using phylogenetic trees
Metin Balaban 1, Niema Moshiri 1, Uyen Mai 2, Xingfan Jia 3, Siavash Mirarab 4
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6705769/
TreeCluster is available at https://github.com/niemasd/TreeCluster.
TreeCluster takes a newick tree and a threshold value as input and returns clusters in a formatted text file. TreeCluster uses treeswift [23] package for fast tree operations.


https://en.wikipedia.org/wiki/UCLUST
https://www.drive5.com/usearch/manual/uclust_algo.html
https://www.drive5.com/usearch/
USEARCH

https://www.fifthdimension.jp/wiki.cgi?page=%C7%DB%CE%F3%A5%AF%A5%E9%A5%B9%A5%BF%A5%EA%A5%F3%A5%B0
配列クラスタリング - Life is fifthdimension.
USEARCH
CD-HIT
OrthoMCL

http://kazumaxneo.hatenablog.com/archive/category/sequence%20%20clustering
sequence clustering カテゴリーの記事一覧 - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2019/08/08/095820
多機能な配列処理ツール VSEARCH（USEARCHの代替） - macでインフォマティクス
いくつかの最も重要な機能（検索、クラスタリング、キメラ検出とサブサンプリング）を評価し、それらをUSEARCHと比較した。 VSEARCHはUSEARCHの結果と同等かそれ以上の結果をもたらすことが分かった。

http://kazumaxneo.hatenablog.com/entry/2018/10/11/195011
クラスタリングツール MeShClust - macでインフォマティクス
シーケンスクラスタリング（CD-HIT、UCLUST、およびDNACLUST）のために広く使用されているツールは、最適な解決策を見つけることが保証されていないgreedy algorithmに依存している。
ここでは、ヌクレオチドシークエンスをクラスタリングする際の mean shiftアルゴリズムを利用した新しいソフトウェアツールMeShClustを提案する。

http://kazumaxneo.hatenablog.com/entry/2017/08/03/191326
配列をクラスタリングする CD-HIT - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/09/03/183139
配列のクラスタリングツール UCLUST - macでインフォマティクス

----------
## mmseq2

https://github.com/soedinglab/MMseqs2
MMseqs2: ultra fast and sensitive protein search and clustering suite
MMseqs2 (Many-against-Many sequence searching) is a software suite to search and cluster huge protein and nucleotide sequence sets. 

https://www.ncbi.nlm.nih.gov/pubmed/30615063
Bioinformatics. 2019 Aug 15;35(16):2856-2858. doi: 10.1093/bioinformatics/bty1057.
MMseqs2 desktop and local web server app for fast, interactive sequence searches.
Mirdita M1, Steinegger M1,2, Söding J1.

http://kazumaxneo.hatenablog.com/entry/2019/06/28/073000
MMseqs2 コマンド其の2 タンパク質配列のクラスタリング - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/09/22/220752
高速かつ高感度なプロテイン検索ツール MMseqs2 - macでインフォマティクス

----------
## diamond
https://ab.inf.uni-tuebingen.de/software/diamond/
https://github.com/bbuchfink/diamond
GitHub - bbuchfink/diamond: Accelerated BLAST compatible local sequence aligner.

blastx

https://www.ncbi.nlm.nih.gov/pubmed/25402007
Nat Methods. 2015 Jan;12(1):59-60. doi: 10.1038/nmeth.3176. Epub 2014 Nov 17.
Fast and sensitive protein alignment using DIAMOND.
Buchfink B1, Xie C2, Huson DH3.

https://twitter.com/windowmoon/status/916248116193456129
窓月＠低度AI人材 on Twitter: "DIAMONDはBLASTNをサポートしてないし、原理上アミノ酸配列データベースでしか高速化が機能しない。核酸配列データベースの超高速ローカルアライメント検索できるアプリが欲しい。"
1:25 PM · Oct 6, 2017

http://kazumaxneo.hatenablog.com/entry/2017/08/24/150512
BLASTとコンパチブルで高速なホモロジー検索ツール Diamond - macでインフォマティクス

2015-12-28
https://ang65.hatenadiary.org/entry/20151228/1451307913
高速なタンパク質配列相同性検索ツール「DIAMOND」 - それなりにマジメなメモ

----------

https://www.biostars.org/p/17696/
Difference Between "Pipeline" And "Workflow" ?
https://en.wikipedia.org/wiki/Bioinformatics_workflow_management_system
Galaxy: initially targeted at genomics


https://www.ddbj.nig.ac.jp/download.html
ダウンロード
16S rRNA (Prokaryotes)
最新 DDBJ リリースから 16S rRNA 配列データを抽出したもの

----------

## convert

https://molbiol-tools.ca/Convert.htm
Convert

http://kazumaxneo.hatenablog.com/entry/2019/07/10/073000
様々なフォーマットのシーケンスファイルを素早くFASTA形式に変換する any2fasta - macでインフォマティクス
fastqにも対応してますが、処理データ数が多ければseqtk（C lang）やseqkit（Go lang）を使ったほうが早く終わります。

2018/11/03 
https://www.biostars.org/p/83153/
How To Extract Rrna Sequences (In Fasta Format) From Genbank (Bacterial Genome)?

2017/01/07
https://www.biostars.org/p/230441/
Splitting and Extracting Features in fasta format from Genbank Files using Biopython

2011/01/06
https://warwick.ac.uk/fac/sci/moac/people/students/peter_cock/python/genbank2fasta/
Converting GenBank files to FASTA format with Biopython

----------

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

https://github.com/hiromasaono/training/tree/master/180612_KeioSFC
今日から使える便利な生命科学系公共データベース・ウェブツール
小野 浩雅
2018年6月12日(火)

https://twitter.com/ecSeq/status/982476057805754368
ecSeq Bioinformatics on Twitter: "NGS Code Snippet: Convert FASTQ to FASTA on the command line https://t.co/xsdzmU52LS"
12:32 AM - 7 Apr 2018
https://www.ecseq.com/support/ngs-snippets/convert-fastq-to-fasta-on-the-command-line
```
paste - - - - < file.fq | cut -f 1,2 | sed 's/^@/>/' | tr "\t" "\n" > file.fa
```

2018-08-04
https://qiita.com/antiplastics/items/add3f8438cbe6b2b594e
どの生物種までGO解析ができるか


### 2017


----------
## rebase

http://rebase.neb.com/rebase/rebase.html
Official REBASE Homepage | The Restriction Enzyme Database | NEB

https://pubmed.ncbi.nlm.nih.gov/19846593/
Nucleic Acids Res
. 2010 Jan;38(Database issue):D234-6. doi: 10.1093/nar/gkp874. Epub 2009 Oct 21.
REBASE--a database for DNA restriction and modification: enzymes, genes and genomes
Richard J Roberts 1, Tamas Vincze, Janos Posfai, Dana Macelis
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2808884/

https://integbio.jp/dbcatalog/record/nbdc00648
REBASE - Integbio データベースカタログ
info 説明: 	制限酵素と関連するタンパク質に関する情報を収集したデータベースです。制限酵素の認識サイトや切断サイト、同一の塩基配列を認識するイソ制限酵素、入手先、メチル化感受性、文献情報などが収録されています。DNAメチルトランスフェラーゼやホーミングエンドヌクレアーゼ、DNAエンドヌクレアーゼ、特異的サブユニットなどのデータも含まれています。
info 生物種: 	Eukaryota (2759), Bacteria (2), Archaea (2157), Viruses (10239)

https://pubmed.ncbi.nlm.nih.gov/32765461/
Front Microbiol
. 2020 Jul 17;11:1628. doi: 10.3389/fmicb.2020.01628. eCollection 2020.
Networking and Specificity-Changing DNA Methyltransferases in Helicobacter pylori
Hirokazu Yano 1 2, Md Zobaidul Alam 1, Emiko Rimbara 3, Tomoko F Shibata 4, Masaki Fukuyo 5, Yoshikazu Furuta 1 2, Tomoaki Nishiyama 6, Shuji Shigenobu 4, Mitsuyasu Hasebe 4 7, Atsushi Toyoda 8, Yutaka Suzuki 1, Sumio Sugano 1 2, Keigo Shibayama 3, Ichizo Kobayashi 1 2 9 10 11
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7379913/
- Prokaryotes possess, on average, five DNA methyltransferase genes and three methylated sequence motifs (Blow et al., 2016; REBASE PacBio statistics, 2020). 
- REBASE PacBio statistics (2020). Available online at: http://rebase.neb.com/rebase/pbstatlist.html (accessed May 22 2020). doi: 10.1093/bioinformatics/btq033


http://www.bioinfo.sfc.keio.ac.jp/class/genpro/PPT/genpro_renzym.pdf
制限酵素地図の作製 - SFC Bio
http://www.bioinfo.sfc.keio.ac.jp/class/genpro/Texts/genpro_renzym1.pdf
制限酵素地図の作成

https://ja.wikipedia.org/wiki/制限修飾系



----------

### bioconda

https://bioconda.github.io/
Bioconda documentation

https://bioconda.github.io/user/install.html
Getting Started
Note: Bioconda supports only 64-bit Linux and Mac OS.

https://qiita.com/MTNakata/items/2d537731d18b231e5fb9
MacでBioconda〜RNA-Seqデータ解析ツールのインストール〜

http://imamachi-n.hatenablog.com/entry/2017/01/14/212719
biocondaを利用してNGS関連のソフトウェアを一括でインストールする - いろいろ試してみる

http://bonohu.jp/blog/bioconda.html
Biocondaを使ってみた
Written by bonohu in misc on 土 08 7月 2017.

----------
## dotplot


http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html
(Rで)塩基配列解析
(last modified 2020/01/02, since 2010)
解析 | 一般 | アラインメント | ペアワイズ | について (last modified 2019/04/05)
http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html#about_analysis_general_alignment_pairwise
```
R用:
Biostrings：原著論文なし
seqinr(dotplot用)：Charif et al., Bioinformatics, 2005
R以外:
JDotter(dotplot用)：Brodie et al., Bioinformatics, 2004
GATA(内部でBLASTを使用)：Nix and Eisen, BMC Bioinformatics, 2005
LASTZ：Harris RS, Ph.D. thesis, 2007
Gepard(dotplot用)：Krumsiek et al., Bioinformatics, 2007
D-GENIES(dotplot用)：Cabanettes and Klopp, PeerJ., 2018
```

http://kazumaxneo.hatenablog.com/entry/2018/08/24/132149
ラージゲノムにも対応したdot plot解析ツール D-GENIES - macでインフォマティクス

https://osdn.net/projects/jambo/docs/emboss_tutorial/...
EMBOSS を用いた配列解析への手引き

http://emboss.open-bio.org/html/use/ch04s03.html
Chapter 4. EMBOSS User Tutorial
4.3. Working with Alignments
4.3.3. Exercise: Making a Dotplot
```
% dottup
```

http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf
2-1. 配列解析基礎Basic Sequence Analysis坊農 秀雅 
 (DBCLS)

	# 配列取得方法
	## togowsの利用 http://togotv.dbcls.jp/20110425.html
    curl -L "http://togows.dbcls.jp/entry/protein/NP_009193.fasta" > HsDJ1.pep.fa
    curl -L "http://togows.dbcls.jp/entry/protein/NP_001232899.fasta" > BmDJ1.pep.fa

	# dottup
	dottup -asequence HsDJ1.pep.fa -bsequence BmDJ1.pep.fa -wordsize 4

	# needle, water
	needle HsDJ1.pep.fa BmDJ1.pep.fa	water HsDJ1.pep.fa BmDJ1.pep.fa

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

https://github.com/haruosuz/DS4GD/blob/master/2018giga/CaseStudy.md#e-utilities

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
## dbcls
DBCLS ｜ ライフサイエンス統合データベースセンター

http://dbcls.rois.ac.jp/

### colil

http://colil.dbcls.jp/browse/papers/
Colil: Comments on literature in literature

https://doi.org/10.7875/togotv.2020.014
2020-01-14 DBCLS で提供している文献情報サービスほか @ AJACS世田谷

https://dbcls.rois.ac.jp/ja/2016/11/25/post1.html
AllieとColilの使い方に関する総説が日本生物工学会誌に掲載されました | DBCLS

## togo

### togows

- https://doi.org/10.7875/togotv.2011.058 2011-04-25 TogoWS RESTサービスを使い倒す 2011
  - http://togows.dbcls.jp/help/
  - http://togows.dbcls.jp/site/ja/rest.html
```
# http://togows.dbcls.jp/entry/nucleotide/NC_003131
ACCESSION=NC_003131
curl http://togows.dbcls.jp/entry/nucleotide/"${ACCESSION}" > "${ACCESSION}".gbk
```

### togotv

https://github.com/haruosuz/ksbn/blob/master/2018/README.2018.4.md#2018-11-30

https://twitter.com/hashtag/togotv18
https://www.medsi.co.jp/books/products/detail.php?product_id=3665
生命科学データベース・ウェブツール - 図解と動画で使い方がわかる！　研究がはかどる定番18選 -
```
Part 3 生命科学系データ解析の現場で，押さえておきたい「鉄板」ツール	
10 章 MEGAで系統樹を作成する	
　　　MEGA で配列のアラインメントや系統解析を行う
　　　DoMosaics を使ってドメイン構造と系統樹を可視化する
　　　MAFFT・RAxML・FigTree を組み合わせて分子系統解析を行う
```

[統合TV | 生命科学系DB・ツール使い倒し系チャンネル](https://togotv.dbcls.jp/)
- https://doi.org/10.7875/togotv.2012.073
2012-08-30 PubMedで論文を検索する
- https://doi.org/10.7875/togotv.2011.076
2011-07-05 MEGAを使って配列アラインメントおよび系統解析をする
- https://doi.org/10.7875/togotv.2017.077
2017-08-04 DoMosaicsを使ってドメイン構造と系統樹を可視化する
- https://doi.org/10.7875/togotv.2018.093
2018-04-03 MAFFT・RAxML・FigTreeを組み合わせて分子系統解析を行う

```
curl https://dbarchive.biosciencedbc.jp/data/togotv/movie/sample/180403_test-fasta.txt > test.fasta

mafft test.fasta > mafft_test.fasta

raxmlHPC-SSE3 -m GTRGAMMA -p 12345 -s mafft_test.fasta -n test
```

----------
## video

https://techacademy.jp/magazine/5155
今さら聞けない！ターミナルの使い方【初心者向け】 | TechAcademyマガジン
https://www.youtube.com/watch?v=3lypOT3_rAE
Macのターミナルの使い方【プログラミング超初心者向け】 - YouTube

http://togotv.dbcls.jp/ja/tags.html?tag=UNIX
【UNIX】に関係する動画・講習会資料・新着論文レビュー
統合TV | 関連するタグから検索

### dotinstall

https://dotinstall.com/lessons/basic_git
git入門 (全22回) - プログラミングならドットインストール
git入門
分散型バージョン管理システムの定番であるgitについて、基本的な使い方を学んでいきます。

https://dotinstall.com/lessons/basic_markdown_v2
Markdown記法入門 (全13回) - プログラミングならドットインストール
Markdown記法入門
軽量のマークアップ言語であるMarkdown記法について学んでいきます。

https://dotinstall.com/lessons/basic_atom_v2
Atom入門 (全15回) - プログラミングならドットインストール
Atom入門
無料かつ拡張性が高いテキストエディタであるAtomの使い方について見ていきます。

#### dotinstall PREMIUM

無料公開中
この動画を見るには
無料のユーザー登録 が必要です

この動画を見るには
プレミアムサービスへの登録 が必要です
プレミアム会員になる（月額1080円）

https://dotinstall.com/lessons/basic_shellscript_v2
シェルスクリプト入門 (全17回) - プログラミングならドットインストール
PREMIUM
シェルスクリプト入門
Unixのコマンドをまとめて実行できるシェルスクリプトについて学んでいきます。

https://dotinstall.com/lessons/basic_unix
【旧版】UNIXコマンド入門 (一般ユーザー編) (全16回) - プログラミングならドットインストール
PREMIUM
【旧版】UNIXコマンド入門 (一般ユーザー編)
UNIX系OSで使える基本的なコマンドを紹介していきます。

https://dotinstall.com/lessons/basic_shellscript_v2
シェルスクリプト入門 (全17回) - プログラミングならドットインストール
PREMIUM
シェルスクリプト入門
Unixのコマンドをまとめて実行できるシェルスクリプトについて学んでいきます。

https://dotinstall.com/lessons/basic_r
R言語入門 (全13回) - プログラミングならドットインストール
PREMIUM
R言語入門
統計解析用のプログラミング言語であるR言語について、基本的な使い方を見ていきます。

----------




