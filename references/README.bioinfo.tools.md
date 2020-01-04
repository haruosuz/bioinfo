# Bioinformatics tools
バイオインフォマティクス・ツール

## Table of Contents
- [updates](#updates)
- [convert](#convert)
- [bioconda](#bioconda)
- [dotplot](#dotplot)
- [E-utilities](#e-utilities)
- [KofamScan](#kofamscan)
- [seqkit](#seqkit)
- [togo](#togo)
  - [togows](#togows)
  - [togotv](#togotv)

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

https://osdn.net/projects/jambo/docs/emboss_tutorial/...
EMBOSS を用いた配列解析への手引き

http://emboss.open-bio.org/html/use/ch04s03.html
Chapter 4. EMBOSS User Tutorial
```
4.3. Working with Alignments
4.3.3. Exercise: Making a Dotplot

% dottup
```

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

### KofamScan

https://twitter.com/ReiterTaylor/status/1127287338327896064
Taylor Reiter on Twitter: "I wrote a tutorial on how to use kofamscan on the command line: https://t.co/o9WRfXDKU2 I'm so pleased to be able to use this tool independent of the web interface. No more 300mb cutoffs + email submissions!… https://t.co/ULebatHI98"
3:00 PM - 11 May 2019

https://taylorreiter.github.io/2019-05-11-kofamscan/
How to run kofamscan

Posted April 08, 2019.
https://www.biorxiv.org/content/10.1101/602110v1
KofamKOALA: KEGG ortholog assignment based on profile HMM and adaptive score threshold | bioRxiv
Takuya Aramaki, Romain Blanc-Mathieu, Hisashi Endo, Koichi Ohkubo, Minoru Kanehisa, Susumu Goto, Hiroyuki Ogata
Availability KofamKOALA, KofamScan, and KOfam are freely available from https://www.genome.jp/tools/kofamkoala/

----------

### seqkit
https://bioinf.shenwei.me/seqkit/

https://github.com/shenwei356/seqkit

2019/07/30
https://ultrabem-branch3.com/informatics/commands_mac/seqkit_mac
Mac seqkit コマンド: オプション、正規表現など

http://kazumaxneo.hatenablog.com/entry/2018/12/20/210947
seqkitに新しく追加されたコマンドを確認する - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/08/08/235042
fastq / fastaの操作ツール seqkit - macでインフォマティクス

https://twitter.com/yokadzaki/status/842645031756341248
以前書いたseqkitの記事で、FASTAを長さで抽出できないことをぼやいていたら「お困りの点を解決しました！」というメールが作者から来た。seqkit seq に -mで最小長、-Mで最大長を指定するだけというやばすぎるシンプルさ
4:53 PM · Mar 17, 2017

https://yokazaki.hatenablog.com/entry/2017/01/16/160652
seqkitを用いたFASTAのフィルタリング・ソート - yokaのblog

### seqtk
https://github.com/lh3/seqtk
http://kazumaxneo.hatenablog.com/entry/2017/08/01/204851
fastq / fastaの操作ツール seqtk - macでインフォマティクス

----------

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
生命科学データベース・ウェブツール  － 図解と動画で使い方がわかる！　研究がはかどる定番18選 － 
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

