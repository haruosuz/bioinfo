
# bioinfo.tools
バイオインフォマティクス・ツール

## Table of Contents
- [updates](#updates)
- [convert](#convert)
- [bioconda](#bioconda)
- [dotplot](#dotplot)
- [sliding window](#sliding-window)
- [E-utilities](#e-utilities)
- [KofamScan](#kofamscan)
- [shenwei356](#shenwei356)
  - [seqkit](#seqkit)
- [dbcls](#dbcls)
  - [colil](#colil)
  - [DBCLS_SRA](#dbcls_sra)
- [togo](#togo)
  - [togows](#togows)
  - [togotv](#togotv)
- [mmseq2](#mmseq2)
- [diamond](#diamond)
- [homology search](#homology-search)
- [rebase](#rebase)
- [shell](#shell)
- [vsearch](#vsearch)
- [clust](#clust)
- [video](#video)
- [hmmer](#hmmer)

----------
## hmmer

http://hmmer.org/
HMMER: biosequence analysis using profile hidden Markov models

http://crusade1096.web.fc2.com/hmmer.html
HMMER
インストール先
マニュアル

2022-10-14
https://とうごろう.jp/wiki/バイオ・データ・マイニング/HMMERで相同性検索を行う/

2022/07/08 追記
https://kazumaxneo.hatenablog.com/entry/2017/07/31/114955
隠れマルコフモデル（HMM）のペアワイズアラインメントに基づいた高感度なタンパク質配列検索ツール HMMER - macでインフォマティクス
ここではタンパク質配列をクエリとしてHMMプロファイルデータベースを検索するhmmscanを試す。

May 30, 2020
https://github.com/linnabrown/run_dbcan/issues/49
hmmscan not effective, use hmmsearch? · Issue #49 · linnabrown/run_dbcan
In an old blog post, Sean Eddy explains why hmmscan is slow and that one should use hmmsearch instead (https://cryptogenomicon.org/2011/05/27/hmmscan-vs-hmmsearch-speed-the-numerology/; this is about translated nucleotide searches, but I believe it applies well to ORFs in amino acid format too).

https://www.biostars.org/p/438243/
hmmsearch vs hmmscan - e-value, speed, & output differences?


2020.04.18
https://bi.biopapyrus.jp/db/pfam.html
Pfam | タンパク質ドメインファミリーのデータベース
HMMER アルゴリズムは、profile hidden Markov models と呼ばれる確率モデルを実装している。スコアマトリックスに基づくホモロジー検索である BLAST などに比べ、遠縁ホモログをより正確に検索することができる。

2017.12.12
https://doi.org/10.7875/togotv.2017.125
Pfamを使ってタンパク質のドメインを調べる 2017
HMMERが組み込まれているInterProScanを使う

http://sy41211.hatenablog.com/entry/2015/11/28/083056
HMMERを使ったPfamデータベースへのドメイン検索 - バイオインフォマティクス初心者の日常

Fri 27 May 2011
http://cryptogenomicon.org/hmmscan-vs-hmmsearch-speed-the-numerology.html
hmmscan vs. hmmsearch speed: the numerology ·

The bottom line: use hmmsearch, not hmmscan. 




----------


https://biomedicalhacks.com/2020-05-19/biopython-basic-2/
Biopython入門 - 中編 【NCBIデータベースやBlastへのアクセス】

BiopythonからNCBI Entrezデータベースへのアクセス
BiopythonからNCBIにアクセスする時には、まずEntrezユーザーガイドラインをよく読みましょう。

特に大事なところを2点抜粋して意訳すると、

Entrezユーザーガイドラインの特に重要な点
アクセスの頻度が一秒に三回以下になるようにする
自分のメールアドレスを指定する (問題があったときにNCBIから連絡ができるように)

https://www.ncbi.nlm.nih.gov/books/NBK25497/#chapter2.Usage_Guidelines_and_Requiremen
After that date, any site (IP address) posting more than 3 requests per second to the E-utilities without an API key will receive an error message.


https://www.ncbi.nlm.nih.gov/home/tools/
Software Tools - Download - NCBI

----------
## 

https://www.ncbi.nlm.nih.gov/books/NBK179288/
Entrez Direct: E-utilities on the Unix Command Line - Entrez Programming Utilities Help - NCBI Bookshelf


2:47 PM · Jul 15, 2023
https://twitter.com/Tyu_Shi/status/1680091711555670021
Hiroshi Mori on Twitter: "Entrez Directによるesearchやefetch使ったコマンドラインでのNCBIのデータ検索とメタデータ取得が非常に便利。慣れるとWebブラウザでNCBIにアクセスしてデータ取得する操作は不要になるレベル。" / X

5:28 PM · Jun 11, 2018
https://twitter.com/yayamamo/status/1006090787740835842
山本 泰智 (Y. Yamamoto) on Twitter: "PubMedやGeneなど、NCBIの提供する豊富なウェブサービスをUNIXターミナルから利活用できるツール群Entrez Directの解説。パイプラインを用いたUNIXらしい処理が可能で有用性が高いと思います。 https://t.co/6CdOSsqPeL" / X


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

https://dbcls.rois.ac.jp/services.html

DBCLS SRA
公共データベースに登録されたNGSデータについて、さまざまな統計情報から閲覧、比較、データ取得ができる目次サイトです。

### DBCLS_SRA

https://sra.dbcls.jp/

https://dbcls.rois.ac.jp/services.html#DBCLS_SRA

https://biosciencedbc.jp/event/symposium/togo2020/poster/019.html
【19】公共NGSデータとその関連データの検索（2020年版）：SRA/BioProject/BioSample - NBDC
https://biosciencedbc.jp/event/symposium/togo2020/files/poster19_2020_nakazato.pdf

https://doi.org/10.7875/togotv.2014.097
DBCLS SRAを使ってNGSデータを検索する | TogoTV

### colil

http://colil.dbcls.jp/browse/papers/
Colil: Comments on literature in literature

http://colil.dbcls.jp/portal/help_ja.html
Colil (コリル): ヘルプ

2020.01.14
https://doi.org/10.7875/togotv.2020.014
DBCLS で提供している文献情報サービスほか @ AJACS世田谷 | TogoTV 
52:20

https://dbcls.rois.ac.jp/ja/2016/11/25/post1.html
AllieとColilの使い方に関する総説が日本生物工学会誌に掲載されました | DBCLS
当センターの 山本 泰智 特任准教授による総説「AllieとColilの使い方ーPubMed/MEDLINEから効率よく情報を抽出する日本発のサービス」が日本生物工学会誌に掲載されました。連載「バイオインフォマティクスを使い尽くす秘訣教えます！」の第2回目です。 総説はオープンアクセスで、下記URLからご覧いただけます。 https://www.sbj.or.jp/wp-content/uploads/file/sbj/9411/9411_bioinformatics.pdf

2015.02.07
https://doi.org/10.7875/togotv.2015.015
Colilを使って論文の引用情報を検索する | TogoTV
03:26

https://pubmed.ncbi.nlm.nih.gov/26500753/
J Biomed Semantics
. 2015 Oct 19;6:38. doi: 10.1186/s13326-015-0037-x. eCollection 2015.
Colil: a database and search service for citation contexts in the life sciences domain
Toyofumi Fujiwara 1, Yasunori Yamamoto 2
https://jbiomedsem.biomedcentral.com/articles/10.1186/s13326-015-0037-x
https://www.ncbi.nlm.nih.gov/labs/pmc/articles/PMC4617487/

What do other papers say about a paper?
For example,

https://pubmed.ncbi.nlm.nih.gov/27915108/
is cited by the following papers.
http://colil.dbcls.jp/browse/papers/27915108/1/100/year

https://pubmed.ncbi.nlm.nih.gov/30085063/
is cited by the following papers.
http://colil.dbcls.jp/browse/papers/30085063/1/100/year


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

## updates

### 2019

### Kablammo
http://kablammo.wasmuthlab.org/

https://twitter.com/yokuyama/status/1122298158480904192
奥山雄大（ver.関西） on Twitter: "blastの結果を可視化するウェブツールKablamm うわーこれすごいわ。感動する。上がコチャルメルソウで下がチャルメルソウ。ゲノムの構造がひと目で分かる。そして、核心に迫るためにはチャルメルソウのゲノムはもう少し伸ばさないとあかんことがわかった。 https://t.co/vFCAVCuwxQ… https://t.co/dPCSUMdU75"
8:35 PM - 27 Apr 2019
http://kazumaxneo.hatenablog.com/entry/2019/04/10/073000
blast結果を可視化するwebツール Kablammo - macでインフォマティクス

https://twitter.com/Acinetobazza/status/1107892222257696768
Dr Mark Schultz on Twitter: "I have written an introductory tutorial on using edirect command line tools to query NCBI's Entrez database for downloading read-sets and genbank assemblies https://t.co/t7Yv0ZirCp"
2:31 AM - 19 Mar 2019
https://github.com/schultzm/entrez_direct_tut/blob/master/README.md
entrez_direct_tut/README.md at master · schultzm/entrez_direct_tut

4:39 PM - 19 Mar 2019
https://twitter.com/RodrigoATCG/status/1108105740663836675
Rodrigo Martinez on Twitter: "For way too long we have been using the 'cost of sequencing' graph (left) to tell stories about what may come in the world of DNA. Here's a newer version that hopefully triggers conversations about what's to come in consumer genomics - the emerging #socialgenome Thoughts?… https://t.co/o7Tzos6bGa"
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
## shenwei356

https://twitter.com/shenwei356/status/1360429952546394114
Wei Shen on Twitter: "Mapping NCBI Genbank accession to GTDB accession. @thesteinegger @ace_gtdb https://t.co/37Y9ruzPL8 https://t.co/qfK4H8HvTv" / Twitter
https://github.com/shenwei356/ncbi_acc2gtdb_acc/releases/tag/v0.2.0

----------
## taxonkit

https://github.com/haruosuz/bioinfo/blob/master/2021/CaseStudy.md#taxonkit

----------
## seqkit

https://github.com/shenwei356/seqkit

https://bioinf.shenwei.me/seqkit/

https://bioinf.shenwei.me/seqkit/usage/#fx2tab-tab2fx
convert FASTA/Q to tabular format, and provide various information,
like sequence length, GC content/GC skew.

https://pubmed.ncbi.nlm.nih.gov/27706213/
PLoS One
. 2016 Oct 5;11(10):e0163962. doi: 10.1371/journal.pone.0163962. eCollection 2016.
SeqKit: A Cross-Platform and Ultrafast Toolkit for FASTA/Q File Manipulation
Wei Shen 1, Shuai Le 1, Yan Li 2, Fuquan Hu 1
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0163962
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5051824/

12:00 AM · Dec 26, 2020
https://twitter.com/shenwei356/status/1342485281178411008
```
$ echo -ne ">seq\nagcaccgcgtatagcgcgtttgaaacccatattagcccggcgaacgatgaaatgatttgctgccatcgcattagcaccatggcgagc\n" \
    | seqkit translate 
>seq
STAYSAFETHISPANDEMICCHRISTMAS
```

https://bio-and.info/post/DNA_Analysis/SeqKit
```
# SeqkitでGC含量の計算
```

http://www.iu.a.u-tokyo.ac.jp/lectures/AG09/20200512_2.pdf
バクテリアゲノム解析実習
```
seqkit stat -G N -a assemble/contigs.fasta
```

http://www.med.osaka-cu.ac.jp/bacteriology/b-online/omics/omics20200221.pdf
Mac terminalを用いたバイオインフォマティクス解析
第７回
【解析環境の整備（python） 】
【NGS配列処理ツールseqkitの紹介 】
【統合型ゲノムビューワーの利用】
細菌学教室 坪内泰志
RCIDSオミックス勉強会_2020A01 

2019/07/30
https://ultrabem-branch3.com/informatics/commands_mac/seqkit_mac
Mac seqkit コマンド: オプション、正規表現など

http://kazumaxneo.hatenablog.com/entry/2018/12/20/210947
seqkitに新しく追加されたコマンドを確認する - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2017/08/08/235042
fastq / fastaの操作ツール seqkit - macでインフォマティクス

4:53 PM · Mar 17, 2017
https://twitter.com/yokadzaki/status/842645031756341248
以前書いたseqkitの記事で、FASTAを長さで抽出できないことをぼやいていたら「お困りの点を解決しました！」というメールが作者から来た。seqkit seq に -mで最小長、-Mで最大長を指定するだけというやばすぎるシンプルさ

https://yokazaki.hatenablog.com/entry/2017/01/16/160652
seqkitを用いたFASTAのフィルタリング・ソート - yokaのblog

----------
## seqtk
https://github.com/lh3/seqtk

http://kazumaxneo.hatenablog.com/entry/2017/08/01/204851
fastq / fastaの操作ツール seqtk - macでインフォマティクス
seqtkはfastqをfastaに変換したり、相補鎖に変換できるツール。ランダムサンプリング機能ももち、de novo transcriptome解析でアセンブルに有利なリードデプスに間引くツールとして用いられることもある（ペーパー）。動作が非常に高速のため使いやすい。似たツールにseqkitがある。

3:25 AM · Jul 3, 2017
https://twitter.com/windowmoon/status/881579535891693568
窓月㌠ on Twitter: "FASTQ/FASTAの配列処理、自作スクリプトで済ませている人も多いと思うけど、Seqtk https://t.co/wpEVtJzo7g とVSEARCH https://t.co/J9zhDhM3QB で処理するのが圧倒的おすすめである。何しろ速い。"

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
## homology search

https://twitter.com/hornistyf/status/1368016916825051137
Sequence identityの計算法いろいろ。
On the definition of sequence identity
https://lh3.github.io/2018/11/25/on-the-definition-of-sequence-identity

https://www.scl.kyoto-u.ac.jp/Appli/
アプリケーション一覧
```
DIAMOND	ホモロジー検索	diamond
MMseq2	ホモロジー検索、配列クラスタリング	mmseq2
ghostx	ホモロジー検索	ghostx
```

http://kazumaxneo.hatenablog.com/entry/2019/01/20/073000
pblat: マルチスレッドに対応したblat - macでインフォマティクス

----------
### AC-DIAMOND

https://github.com/Maihj/AC-DIAMOND

https://pubmed.ncbi.nlm.nih.gov/29771282/
Bioinformatics
. 2018 Nov 1;34(21):3744-3746. doi: 10.1093/bioinformatics/bty391.
AC-DIAMOND v1: accelerating large-scale DNA-protein alignment
Huijun Mai 1, Yifan Zhang 2, Dinghua Li 1, Henry Chi-Ming Leung 1 2, Ruibang Luo 1 2, Chi-Kwong Wong 2, Hing-Fung Ting 1, Tak-Wah Lam 1 2
https://academic.oup.com/bioinformatics/article/34/21/3744/4996593

http://kazumaxneo.hatenablog.com/entry/2018/05/23/102457
超高速でDNAとタンパク質のアライメントを行う AC-DIAMOND - macでインフォマティクス
DIAMONDと同じ感度を維持しながら、DIAMONDよりも6倍から7倍のスピードアップを持つ、より効率的なDNA-タンパク質アライメントツールAC-DIAMOND（バージョンv1）を紹介する。 

----------
### vsearch

https://github.com/torognes/vsearch

https://github.com/torognes/vsearch/releases/download/v2.15.0/vsearch_manual.pdf

--strand plus|both
When comparing sequences with the cluster seed, check the plus strand only (default) or check both strands.

https://github.com/torognes/vsearch/issues/379
Reverse complement sequences during clustering · Issue #379 · torognes/vsearch

https://pubmed.ncbi.nlm.nih.gov/27781170/
PeerJ
. 2016 Oct 18;4:e2584. doi: 10.7717/peerj.2584. eCollection 2016.
VSEARCH: a versatile open source tool for metagenomics
Torbjørn Rognes 1, Tomáš Flouri 2, Ben Nichols 3, Christopher Quince 4, Frédéric Mahé 5

https://twitter.com/search?q=%22vsearch%22%20lang%3Aja&src=typed_query&f=live

5:33 PM · Apr 22, 2020
https://twitter.com/windowmoon/status/1252878249207590914
Replying to 
@chalkless
ntを使用するのは、「対応付けが完全な分類体系データベース(NCBI Taxonomy)がある」からです。Claidentは開発版のclconvrefdbコマンドでUNITEやMIDORIやSilvaの参照配列DBも変換して使用できます。vsearchやMMseqs2も単独でほとんどのことができますよ。

12:30 PM · Apr 14, 2020
https://twitter.com/windowmoon/status/1249902897015316480
注釈に基づいてextractfeatで切り出し。
間違って切り出された配列を除外するため参照配列用意してvsearchで比較して類似度50%未満を排除。
間違って切り出されなかった配列を得るため上記配列をクエリにしてblastnでマッチした部分を切り出し。
配列名を「目__科__属_種__アクセッション」に。

10:52 AM · Aug 9, 2019
https://twitter.com/kmoooooog/status/1159643654631251970
Replying to 
@iNut
なるほど。。メタゲノム解析で使うvsearch https://github.com/torognes/vsearch とかクラスタ毎にファイル分けて出力するので場合によっては数十万~数百万とかのちっちゃいファイル作ったりするんですが、そういうことをやんなきゃいけない場合のベストプラクティスとかあったりするのでしょうか

http://kazumaxneo.hatenablog.com/entry/2019/08/08/095820
多機能な配列処理ツール VSEARCH（USEARCHの代替） - macでインフォマティクス
- いくつかの最も重要な機能（検索、クラスタリング、キメラ検出とサブサンプリング）を評価し、それらをUSEARCHと比較した。 
- defaultではplus strandのみクラスタリングするので、同じ配列でもreverse compなら別配列扱いになる（"--strand plus"）。両鎖クラスタリングするなら"--strand both"にする。（#379より）

----------
## clust

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

http://kazumaxneo.hatenablog.com/entry/2018/10/11/195011
クラスタリングツール MeShClust - macでインフォマティクス
シーケンスクラスタリング（CD-HIT、UCLUST、およびDNACLUST）のために広く使用されているツールは、最適な解決策を見つけることが保証されていないgreedy algorithmに依存している。
ここでは、ヌクレオチドシークエンスをクラスタリングする際の mean shiftアルゴリズムを利用した新しいソフトウェアツールMeShClustを提案する。

http://kazumaxneo.hatenablog.com/entry/2017/08/03/191326
配列をクラスタリングする CD-HIT - macでインフォマティクス

 DNAのクラスタリング。
cd-hit-est

 アミノ酸配列のクラスタリング。
cd-hit

cd-hit、cd-hit-estの他にも、duplicationがあるシーケンスリードをクラスター化するCD-HIT-DUP、オーバーラップがあるリードをクラスター化するCD-HIT-LAP、二つの配列群を比較してクラスター化するCD-HIT-2Dなどがある。どのようなツールがあるかはこちらで確認してください。


http://kazumaxneo.hatenablog.com/entry/2017/09/03/183139
配列のクラスタリングツール UCLUST - macでインフォマティクス


https://github.com/jasonsahl/LS-BSR/blob/master/manual.md#dependencies
- mmseqs2 [optional] (current tested version is 10.6d92c) - At least one clustering method must be chosen if a set of genes is not supplied. The easiest installation method is through conda [https://anaconda.org/bioconda/mmseqs2]. If you invoke with "-c mmseqs", it runs the "easy-cluster" method; if the "-c mmseqs-lin" is invoked, it runs the "easy-linclust" method.
- VSEARCH (tested version is 1.1.3, but works with 2.0.4 and 2.5.0): must be in your $PATH as “vsearch” – At least one clustering method must be chosen if a set of genes is not supplied. Can be freely obtained at: [https://anaconda.org/bioconda/vsearch]. Currently, VSEARCH does not work with protein sequences and you will see a warning if you try to combine VSEARCH with BLASTP or DIAMOND.
- CD-HIT (tested version is 4.6): must be in your path as “cd-hit-est” for nucleotides and “cd-hit” for peptides - At least one clustering method must be chosen if a set of genes is not supplied. Does not support clustering ID lower than 0.7 for nucleotides. Can be freely obtained from: [https://anaconda.org/bioconda/cd-hit]



----------
## mmseq2

https://github.com/soedinglab/MMseqs2
MMseqs2: ultra fast and sensitive sequence search and clustering suite
MMseqs2 (Many-against-Many sequence searching) is a software suite to search and cluster huge protein and nucleotide sequence sets. 
- Translated searches of nucleotides against proteins (blastx), proteins against nucleotides (tblastn) or nucleotide against nucleotide (tblastx)


https://github.com/soedinglab/MMseqs2/wiki


https://twitter.com/search?q=mmseq2%20lang%3Aja&src=typed_query&f=live
- MMseq2が塩基配列vs塩基配列の検索に正式対応してくれればいいのに。分子同定機能は内部でやってるんだから。
- MMseq2が速いと聞いて試したが、デフォルト設定でsearchする限りはBLASTPの方が速度的にも、メモリー的にも優っていた。クラスタリングならまた違うのかも。
- なんでMMseq2使ったんですか？DIAMONDじゃだめですか？とGHOSTZの作者が質問。 #biofrontier18

11:03 AM · Jul 6, 2018
https://twitter.com/shu65/status/1015053469273780227
- 論文読み会用にHFSP: high speed homology-driven function annotation of proteins読んだ。　 https://academic.oup.com/bioinformatics/article/34/13/i304/5045799
- proteinのアノテーションの行う際、PSI-BLASTを実行後、HSSPと呼ばれるスコアを計算し、それに基づいてアノテーションを行うかどうか判断する。これをMMseq2に置き換えて、それ用にHFSPという新しいスコアを提案。
- ECのlevel 3のデータで実験したところ、PSI-BLAST+HSSPと比較し、非常に高い相関を示し、HFSPを使ってアノテーションを行っても高い精度でできることを示している。ただし、ECのlevel 4までいくと精度が落ちるらしい

http://kazumaxneo.hatenablog.com/entry/2019/06/28/073000
MMseqs2 コマンド其の2 タンパク質配列のクラスタリング - macでインフォマティクス

http://kazumaxneo.hatenablog.com/entry/2018/09/22/220752
高速かつ高感度なプロテイン検索ツール MMseqs2 - macでインフォマティクス

----------
## diamond
https://ab.inf.uni-tuebingen.de/software/diamond/
https://github.com/bbuchfink/diamond
GitHub - bbuchfink/diamond: Accelerated BLAST compatible local sequence aligner.
https://github.com/bbuchfink/diamond/wiki


https://www.ncbi.nlm.nih.gov/pubmed/25402007
Nat Methods. 2015 Jan;12(1):59-60. doi: 10.1038/nmeth.3176. Epub 2014 Nov 17.
Fast and sensitive protein alignment using DIAMOND.
Buchfink B1, Xie C2, Huson DH3.

5:00 PM · Dec 26, 2019
https://twitter.com/TaromaedaMaedat/status/1210108069293641731
Taro Maeda umiushi on Twitter: "@drk0311 それはいわゆるnrなのでDLすると大変です。基生研や遺伝研のスパコンにあらかじめ落としてあるのでそれを使ってblastかけてください。fmtオプションなしの出力をmeganはうけとれるので、とりまblast or diamondです" / Twitter

4:08 PM · Dec 26, 2019
https://twitter.com/TaromaedaMaedat/status/1210095055790206982
Taro Maeda umiushi on Twitter: "@drk0311 blast（Diamond)結果を元に対象遺伝子の由来生物種を推定してくれます" / Twitter

diamond、blastn検索できたっけ？
5:52 PM · Dec 11, 2019
https://twitter.com/hinaichigo/status/1204685443339444225
ホタペン on Twitter: "@piroyon blastpかblastx相当になります。　あと--sensitiveモードはデフォルトモードの15倍以上遅いです。 傍流にAC-DIAMONDというのもありますがやっぱりprotein用です。　https://t.co/AXP5uKoq4m" / Twitter

https://twitter.com/windowmoon/status/916248116193456129
窓月＠低度AI人材 on Twitter: "DIAMONDはBLASTNをサポートしてないし、原理上アミノ酸配列データベースでしか高速化が機能しない。核酸配列データベースの超高速ローカルアライメント検索できるアプリが欲しい。"
1:25 PM · Oct 6, 2017

http://kazumaxneo.hatenablog.com/entry/2017/08/24/150512
BLASTとコンパチブルで高速なホモロジー検索ツール Diamond - macでインフォマティクス

2015-12-28
https://ang65.hatenadiary.org/entry/20151228/1451307913
高速なタンパク質配列相同性検索ツール「DIAMOND」 - それなりにマジメなメモ

3:17 PM · Aug 30, 2015
https://twitter.com/shu65/status/637871762273865728
Shuji Suzuki on Twitter: "BLASTよりも2万倍速いというDIAMONDさん、1スレッドのとき明らかに2万倍じゃない件。1スレッドで比較してなかったからもしかしてと思ったがこれ48スレッドまで持っててBLASTがさちってるところだけで比較したな" / Twitter


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

- https://github.com/haruosuz/DS4GD/tree/master/2021
ドットプロット dotplot
- https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#comparing-two-sequences-using-a-dotplot
- https://a-little-book-of-r-for-bioinformatics.readthedocs.io/en/latest/src/chapter4.html#comparing-two-sequences-using-a-dotplot

2020/07/03
https://www.youtube.com/watch?v=h5FRVSNQYAI
【生命情報入門】配列解析(1)： ドットマトリックス法 - YouTube

http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html
(Rで)塩基配列解析
解析 | 一般 | アラインメント | ペアワイズ | について (last modified 2019/04/05)
http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html#about_analysis_general_alignment_pairwise
解析 | 一般 | アラインメント | ペアワイズ | について
ペアワイズアラインメント（pair-wise alignment）用プログラムを示します。一応ペアワイズアラインメントの枠組みに含まれると思うので、 ドットプロット(dot plot; dotplot)用のプログラムも示します。
```
R用:
seqinr(dotplot用)：Charif et al., Bioinformatics, 2005
R以外:
JDotter(dotplot用)：Brodie et al., Bioinformatics, 2004
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

Feb 21, 2017
https://github.com/evolvedmicrobe/dotplot
Rapid dot plots in R.

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

https://stackoverflow.com/questions/26834908/seqinr-dotplot-change-axis
r - seqinr dotplot - change axis - Stack Overflow

![](https://i.stack.imgur.com/0GTQu.png)

https://rdrr.io/rforge/seqinr/man/dotPlot.html
https://rdrr.io/cran/seqinr/man/dotPlot.html
dotPlot: Dot Plot Comparison of two sequences in seqinr: Biological Sequences Retrieval and Analysis
```
wsize	
the size in chars of the moving window.

wstep	
the size in chars for the steps of the moving window. Use wstep == wsize for non-overlapping windows.

nmatch	
if the number of match per window is greater than or equal to nmatch then a dot is produced.
```

----------
## sliding window

https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#over-represented-and-under-represented-dna-words

https://a-little-book-of-r-for-bioinformatics.readthedocs.io/en/latest/src/chapter2.html#a-little-more-introduction-to-r
We can change the step size by altering the value of the “by” argument given to the function seq().
```
# create the sequence of numbers from 1-100 in steps of 1 (ie. 1, 2, 3, 4, ... 97, 98, 99, 100):
seq(1, 100, by = 1)

# create a sequence of numbers from 1-100 in steps of 2 (ie. 1, 3, 5, 7, ... 97, 99):
seq(1, 100, by = 2)
```

https://a-little-book-of-r-for-bioinformatics.readthedocs.io/en/latest/src/chapter2.html#over-represented-and-under-represented-dna-words
Note that this sliding window analysis of GC content is a slightly simplified version of the method usually carried out by bioinformaticians. In this simplified version, we have calculated the GC content in non-overlapping windows along a DNA sequence. However, it is more usual to calculate GC content in overlapping windows along a sequence, although that makes the code slightly more complicated.

https://www.researchgate.net/figure/Sliding-Windows-Approach-window-size-10-and-step-1_fig2_343093625
Sliding Windows Approach: window size = 10 and step = 1

![](https://www.researchgate.net/profile/Katarina_Grolinger/publication/343093625/figure/fig2/AS:915554642698242@1595296645723/Sliding-Windows-Approach-window-size-10-and-step-1.ppm)

https://www.researchgate.net/figure/The-set-of-the-sliding-window-w-and-step-size-s_fig3_337106511
The set of the sliding window (w) and step size (s).

![](https://www.researchgate.net/publication/337106511/figure/fig3/AS:822943105941507@1573216334540/The-set-of-the-sliding-window-w-and-step-size-s.png)

http://coleoguy.blogspot.com/2014/04/sliding-window-analysis.html
Sliding window analysis
Using a window size of 4 and a step size of 2:

![](https://1.bp.blogspot.com/-eSp1w_oJsBc/U0NmHgWv76I/AAAAAAAAAzU/XyFsegtRKrU/s1600/Screen+Shot+2014-04-07+at+9.59.13+PM.png)

http://bookclub.kodansha.co.jp/product?item=0000275926
https://www.kspub.co.jp/book/detail/5138212.html
よくわかるバイオインフォマティクス入門/藤博幸/講談社
６章　ゲノム解析
6.2.1　ゲノムの特徴
A. ゲノムサイズと遺伝子数
B. GC含量（GC content）
C. GC skew
p.86
ゲノム配列をある一定の長さ毎に分け
次にそれぞれの断片についての GC skew の値を計算し、その値をプロットする。このような方法は
スライディングウィンドウ（sliding window）
とも呼ばれ、
断片のサイズはウィンドウサイズ（window size）、それをずらす大きさはステップサイズ（step size）と呼ばれる。



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




