# Case Study
**ケーススタディ**

## Table of Contents
- [Install](#install)
- [rrnDB](#rrndb)
- [Sequence similarity search](#sequence-similarity-search) 配列類似性検索
- [UniProtKB Swiss-Prot protein sequence database](#uniprotkb-swiss-prot-protein-sequence-database) タンパク質配列データベース
- [2019-08-04](#2019-08-04) 第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー

----------

https://twitter.com/Symbionticism/status/1123203760564637697
Seth Bordenstein on Twitter: "This is a game changer. Many intracellular microbes have a genome wide bias in A’s and T’s. The major assumption has been a mutational bias / drift impacts this outcome. Well, not so fast. Evidence below that selection can contribute or cause it.… https://t.co/yfDqN3b3Lj"
8:33 AM - 30 Apr 2019
https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1007778
Selective advantages favour high genomic AT-contents in intracellular elements
Accordingly, introducing AT-rich and GC-rich plasmids into other bacterial species with different genomic GC-contents revealed that the costs of G+C-rich plasmids decreased with an increasing GC-content of their host’s genomic DNA. 

- https://github.com/haruosuz/DS4GD/tree/master/2019
- https://github.com/haruosuz/introBI/blob/master/2018/CaseStudy.md
- https://github.com/haruosuz/introBI/blob/master/2018/CaseStudy.md#inspecting-data
- https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md

----------
## Install

[bioconda]()
をインストールする:
https://bioconda.github.io/user/install.html
```
# 1. Install conda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda3-latest-MacOSX-x86_64.sh

# 2. Set up channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# 3. Install packages
conda install raxml
conda install mafft
```

[seqkit](https://github.com/haruosuz/mgsa/blob/master/references/mgsa.tools.md#seqkit)
をインストールする:
```
conda install -c bioconda seqkit
```

----------
## rrnDB

リボソームRNAオペロンのコピー数データベース [rrnDB](https://rrndb.umms.med.umich.edu/static/download/) から、16S rRNAをコードするDNA塩基配列のFASTA形式ファイルをダウンロードする:  
```
curl -O https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.5_16S_rRNA.fasta.zip
unzip rrnDB-5.5_16S_rRNA.fasta.zip
```

FASTAファイルの内容を確認する:
```
grep "Wolbachia" rrnDB-5.5_16S_rRNA.fasta
```

"Wolbachia"にマッチする行を表示:
```
grep "Wolbachia" rrnDB-5.5_16S_rRNA.fasta
```

"Wolbachia"の配列をseqkitで抽出し、perlで編集:  
```
myfile=rrnDB-5.5_16S_rRNA.fasta
pattern="Wolbachia"
seqkit grep -nrp "${pattern}" "${myfile}" | perl -pe 's/>([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\n/>$2\|$3\|$4\|$5\|$1\n/g,s/: /_/g' > "${myfile}"."${pattern}".fasta
```

[MAFFT](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#mafft)で多重整列:  
```
input="rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta"
mafft "${input}" > "${input}".aln
```

[RAxML](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#raxml)による最尤系統樹推定:  
```
sequenceFileName=rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta.aln
outputFileName="${sequenceFileName}".newick
substitutionModel=GTRGAMMA
raxmlHPC-SSE3 -s "${sequenceFileName}" -n "${outputFileName}" -m "${substitutionModel}" -p 12345
```



----------
## Sequence similarity search
**配列類似性検索**

[(Rで)塩基配列解析](http://www.iu.a.u-tokyo.ac.jp/~kadota/r_seq.html)
「2-1. 配列解析基礎」坊農秀雅 (DBCLS)
[講義資料](http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf)

----------
## UniProtKB Swiss-Prot protein sequence database
**[Swiss-Prot](https://ja.wikipedia.org/wiki/Swiss-Prot)タンパク質配列データベース**

### Downloading data
データのダウンロード

<ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/> をブラウザ（Firefox または Chrome）で開く。  
*uniprot_sprot.fasta.gz* を右クリックし、「リンクのURLをコピー (Copy Link)」する。

Open the URL <ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/> with your browser (Firefox or Chrome).  
Right click the link *uniprot_sprot.fasta.gz* and select "Copy Link Address".

![https://moshbox.jp/?p=27311](https://moshbox.jp/be/wp-content/uploads/2017/03/Terminal_Commands-01.png)

    # change shell to bash
    bash

ディレクトリを作成する:  

    # make directories
    mkdir -p ~/projects/data/uniprot/uniprot_sprot

ディレクトリを移動する:  

    # change directories
    cd ~/projects/data/uniprot/uniprot_sprot/

圧縮ファイル（*uniprot_sprot.fasta.gz*）を`wget`または`curl`でダウンロードする:  

    # download data with wget and curl
    #wget -b ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/uniprot_sprot.fasta.gz
     curl -O ftp://ftp.uniprot.org/pub/databases/uniprot/knowledgebase/uniprot_sprot.fasta.gz

`tail -f`でファイル出力を監視する（Control-Cで動作中のプロセスを停止）:  

    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f wget-log

`gunzip`コマンドでファイルを展開する:  

    # decompress files with the command gunzip
    gunzip -c uniprot_sprot.fasta.gz > uniprot_sprot.fasta

### Inspecting data
データの検査 

`ls -lh`でファイルサイズを確認する:  

    # ls -lh reports human-readable file sizes
    ls -lh

[`head`](http://codezine.jp/unixdic/w/head)で先頭部分を表示する:  

    # look at the top of a file with head
    head -n 3 uniprot_sprot.fasta

Extract [FASTA headers](http://www.uniprot.org/help/fasta-headers).

`grep`で、[FASTA](https://ja.wikipedia.org/wiki/FASTA)形式ファイルのヘッダ（`>`で始まる行）にマッチする行を抽出する（Control-Cで動作中のプロセスを停止）:  

    # use grep to extract lines matching the pattern "^>" (use Control-C to stop)
    grep "^>" uniprot_sprot.fasta

Pipe the standard output to the next command with the pipe character (`|`).

[パイプ](https://ja.wikipedia.org/wiki/パイプ_%28コンピュータ%29)でプログラムの入出力をつなぐ。

    grep "^>" uniprot_sprot.fasta | head -n 2

配列の数をカウントする:  

    # wc -l outputs the number of lines
    grep "^>" uniprot_sprot.fasta | wc -l

### [BLAST](https://github.com/haruosuz/bioinfo/blob/master/README.md#blast)

[__BLAST(Basic Local Alignment Search Tool)__ はNCBIで開発された配列類似性検索のためのツール。
BLASTのquery配列はFASTA形式、コマンドラインツールを利用する際のDBとして はmulti-FASTA形式の塩基 OR アミノ酸配列である必要がある。](https://github.com/dogrunjp/presentation/blob/master/20171216_drbonobon_4/PITCHME.md)

[変数に値を設定する](https://shellscript.sunone.me/variable.html#変数に値を設定する):  

    # create a variable and assign it a value
    DB="uniprot_sprot.fasta"
    echo $DB

`makeblastdb`コマンドで、BLAST用に DB の index を作成する:  

    # Building a BLAST database http://www.ncbi.nlm.nih.gov/books/NBK279688/

    # アミノ酸配列をBLAST用にフォーマット
    makeblastdb -in $DB -dbtype prot -hash_index -parse_seqids

BLAST検索に使うquery配列の取得

`blastdbcmd`コマンドで、
[自家製BLAST用DBから必要な配列エントリ取得](https://bonohu.wordpress.com/2014/08/08/yetanother-blastdbcmd/)  
[自家製BLAST用DBから必要な配列エントリバッチ取得](https://bonohu.wordpress.com/2014/11/14/yet2another-blastdbcmd/)

    # Extracting data from BLAST databases with blastdbcmd https://www.ncbi.nlm.nih.gov/books/NBK279689/
    # >sp|P05833|REPA_ECOLX Protein RepA OS=Escherichia coli OX=562 GN=repA PE=3 SV=1
    blastdbcmd -db $DB -entry all -outfmt "%i %t" | awk '/P05833|REPA_ECOLX/ {print $1}' | \
     sed 's/^lcl|//g' | blastdbcmd -db $DB -entry_batch - > myquery.fasta

BLASTの実行:  

    # Running BLAST
    blastp -db $DB -query myquery.fasta

    blastp -db $DB -query myquery.fasta -outfmt 7 -out blastp-out.txt -evalue 1e-10 -num_threads 4

`blastdbcmd`コマンドで、ヒットした配列をBLAST用DBから取得:  

    # Extracting data from BLAST databases with blastdbcmd
    grep -v '#' blastp-out.txt | awk '{print $2}' | uniq | head -n 10 | blastdbcmd -db $DB -entry_batch - > mysubject.fasta

### [Multiple Alignment and Phylogenetic trees](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#multiple-alignment-and-phylogenetic-trees)
多重配列アライメントと系統樹

    # Multiple Sequence Alignment using MAFFT
    mafft mysubject.fasta > myalign.fasta

- [2018-04-03 MAFFT・RAxML・FigTreeを組み合わせて分子系統解析を行う](https://togotv.dbcls.jp/20180403.html)
- [2015-04-13 MAFFTを使ってマルチプルアラインメントを行う](http://doi.org/10.7875/togotv.2015.035)

![](http://www2.tba.t-com.ne.jp/nakada/takashi/phylogeny/fig/sv2/sv7.jpg)

[SeaView](http://www2.tba.t-com.ne.jp/nakada/takashi/phylogeny/seaview2.html)でアライメントを表示する。

[SeaView](http://doua.prabi.fr/software/seaview) is a multiplatform, graphical user interface for multiple sequence alignment and molecular phylogeny.

![](https://weblogo.berkeley.edu/img/weblogo-fig1.png)

[WebLogo](http://weblogo.berkeley.edu/logo.cgi)で配列の保存度を表示する。

[WebLogo](https://weblogo.berkeley.edu/) generates sequence logos indicating sequence conservation.

![http://cse.naro.affrc.go.jp/takezawa/r-tips/r/02.html](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/image/Mac.gif)

[作業ディレクトリ](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/06.html)の変更と確認:  

    WorkingDirectory <- "~/projects/data/uniprot/uniprot_sprot"

    # Set and Get Working Directory
    setwd(WorkingDirectory)
    getwd()

    # List the Files in a Directory
    dir()

    # 多重アライメントのファイルをRに読み込む
    # Reading a multiple alignment file into R
    library(seqinr)
    myaln <- read.alignment(file = "myalign.fasta", format = "fasta")

    # タンパク質配列間の遺伝的距離を計算する
    # Calculating genetic distances between protein sequences
    mydist <- dist.alignment(myaln)

    # 無根系統樹の構築
    # Building an unrooted phylogenetic tree
    library(ape)
    mytree <- nj(mydist)
	par(family="mono")
    plot.phylo(mytree, type = "unrooted") # type = "phylogram", "cladogram", "fan", "unrooted", "radial"

    # 有根系統樹
    # Building a rooted phylogenetic tree
    library(phangorn); mytree <- midpoint(mytree) # midpoint rooting
    plot.phylo(ladderize(mytree, right = FALSE), main = "Phylogenetic Tree")

    # Saving a phylogenetic tree as a Newick-format tree file
    write.tree(mytree, file="mytree.newick")

    # open current working directory
    system("open .")

[SeaView](http://doua.prabi.fr/software/seaview)で系統樹を表示する。

[SeaView Version 4: A Multiplatform Graphical User Interface for Sequence Alignment and Phylogenetic Tree Building](https://academic.oup.com/mbe/article/27/2/221/970247)

![](https://oup.silverchair-cdn.com/oup/backfile/Content_public/Journal/mbe/27/2/10.1093/molbev/msp259/2/m_molbiolevolmsp259f01_3c.gif?Expires=1545572639&Signature=fOWaS-pdA~W-WnKyf1YvpUrcbrK6B0FVW5WBmrE~BczkdAgkModbmfuC7hKvNqBjJExgGZzAJt-~usX0g38ApCVbJxYzQzr1AIgjIgztMI6v3c6U~MSWbckpj63YACB5Z8vd60XJe3kC8pnle5~x2ImDyUTWGjQutx4X6kck0-gpOQ1-o4jiEVYx-1ulL63-r0lM8K~MtN5AE1NgdElTvvLa0ui6YLME5u2gf17Y8U~onACmCPbf42K-RZg4mFDOJw0pe0O6qI~oTdSUoS0DTfackKrz5V6qujwERSCdR2778J9fTOxyz2jSpWVgtTxZTpTOQT3npMZvnztYAmZ~Cg__&Key-Pair-Id=APKAIE5G5CRDK6RD3PGA)

----------

# 2019-08-04

https://kimuraseminar.wordpress.com/第3回-進化学セミナー-プログラム/
第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー

## 
14:20~17:30	ソフトウェア演習（資料はこちら）
長田直樹 (北海道大学)・呉佳齊（東京工業大学）
手島康介（九州大学）・池村淑道 (長浜バイオ大学)

### PopulationGenetics_Osada

```
cd ~/2019-08-04/PopulationGenetics_Osada/PopulationGenetics_Osada/
open installing_software.html
open Kimura_lecture.html
```

### TraitEvolution_Wu

```
open ~/2019-08-04/TraitEvolution_Wu/TraitEvolutionPractise.pdf

# Infer tree by morphological data: trait_matrix.txt
cd ~/2019-08-04/TraitEvolution_Wu/MorphologicalTrees/
Rscript --vanilla ./Trait_Evolution.R

# Changing format using Ape in R
cd ~/2019-08-04/TraitEvolution_Wu/AncestorStateReconstruction/
Rscript --vanilla ./ChangeToNexTree.R

# MultiState + Maximum Likelihood Method
./BayesTraitsV2 tree.nex Traits.txt

Please select the model of evolution to use.
1)	MultiState
1

Please select the analysis method to use.
1)	Maximum Likelihood.
2)	MCMC
1

> run

# Two-way ANOVA model adapted to Poisson regression
cd ~/2019-08-04/TraitEvolution_Wu/GeneSpecificRate/
Rscript --vanilla ./GeneSepcificRate.R

# Lasso penalized logistic regression
cd ~/2019-08-04/TraitEvolution_Wu/PredictionPrecedure/
ln -s  data/rate.pois.matrix.txt
Rscript --vanilla ./PredictionProcedure.R
```

### AI_Ikemura

https://dl.sony.com/ja/
Neural Network Console

----------



----------





