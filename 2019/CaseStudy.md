# Case Study
**ケーススタディ**

## Table of Contents
- [Install](#install)
- [DoMosaics](#domosaics)
- [GRD](#grd) Genomic-based 16S ribosomal RNA Database
- [ddbj_16S](#ddbj_16S)
- [rrnDB](#rrndb)
- [plasmid.protein.faa](#plasmidproteinfaa)
- [NCBI ASSEMBLY_REPORTS](#ncbi-assembly_reports)
- [2019-11-13](#2019-11-13) Annotathon2019（生命科学データベースの利用価値向上のためのアノテーションマラソン）
- [LEA](#lea) (Latent Environment Allocation)
- [ws222](#ws222) 第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」
[2019-10-23](#2019-10-23) 
[2019-10-24](#2019-10-24) 
[2019-10-25](#2019-10-25) 
- [2019-08-04](#2019-08-04) 第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー
- [Sequence similarity search](#sequence-similarity-search) 配列類似性検索
- [UniProtKB Swiss-Prot protein sequence database](#uniprotkb-swiss-prot-protein-sequence-database) タンパク質配列データベース

----------

- 2019-09-25 [生命科学者のためのDr.Bonoデータ解析実践道場](https://github.com/haruosuz/books/blob/master/DrBonoDojo/README.md)
- 2019-06-28 [進化で読み解く　バイオインフォマティクス入門](https://www.morikita.co.jp/books/book/3349)
- 2018-11-30 [生命科学データベース・ウェブツール - 図解と動画で使い方がわかる！　研究がはかどる定番18選 -](https://www.medsi.co.jp/products/detail/3665)
- 2018-11-19 [よくわかるバイオインフォマティクス入門](https://www.kspub.co.jp/book/detail/5138212.html)
- 2017-09-28 [Dr. Bonoの生命科学データ解析](https://www.medsi.co.jp/books/products/detail.php?product_id=3588)

https://github.com/haruosuz/ksbn/blob/master/2018/README.2018.4.md

# introBI
- https://github.com/haruosuz/introBI
- https://github.com/haruosuz/introBI/tree/master/2019
- https://github.com/haruosuz/introBI/blob/master/2019/CaseStudy.md
- https://github.com/haruosuz/introBI/blob/master/2019/CaseStudy.md#uniprot_sprot

# DS4GD
- https://github.com/haruosuz/DS4GD
- https://github.com/haruosuz/DS4GD/tree/master/2019giga
- https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#ncbi-assembly_reports
- https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#ncbi-refseq-release

[TogoWS RESTサービスを使い倒す 2011](https://doi.org/10.7875/togotv.2011.058)  
[TogoWS: REST](http://togows.dbcls.jp/site/en/rest.html)  
- http://togows.dbcls.jp/entry/nucleotide/J00231/definition

http://togows.dbcls.jp/entry/nucleotide/NZ_LT604074.1/definition
Lactobacillus salivarius isolate LPM01 genome assembly, chromosome: I.


----------
## Install

[bioconda](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#bioconda)
をインストールする:
```
# 1. Install conda
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh
sh Miniconda3-latest-MacOSX-x86_64.sh

# 2. Set up channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# 3. Install packages
conda install seqkit
conda install mafft
conda install raxml
conda install fasttree
conda install blast
```

----------
## DoMosaics

domworld <domainworld@uni-muenster.de> wrote:
the original website does not exist anymore. However, the jar file is still available here: https://domainworld.uni-muenster.de/developing/domosaics/

The current version can be found here: domosaics.jar

### Pfam

- https://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam32.0/
- https://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam36.0/

URLをブラウザ（Firefox または Chrome）で開く。  
*Pfam-A.hmm.gz* を右クリックし、「リンクのURLをコピー」する。

Open the URL with your browser (Firefox or Chrome).  
Right click the link *Pfam-A.hmm.gz* and select "Copy Link Address".

```
# change shell to bash
bash

# ディレクトリを作成
# make directories
mkdir -p ~/projects/data/pfam

# ディレクトリに移動
# change directories
cd ~/projects/data/pfam/

# 圧縮ファイル（*Pfam-A.hmm.gz*）をダウンロード:
# download the file
curl -O ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam32.0/Pfam-A.hmm.gz

# ファイルを解凍:
# decompress files with the command gunzip
gunzip Pfam-A.hmm.gz
```

### HMMER

http://hmmer.org/documentation.html
```
# install HMMER
conda install -c bioconda hmmer  # Anaconda

which hmmscan
which hmmpress
```

```
# テストデータをダウンロード:
# download test data
curl https://togotv.dbcls.jp/170804test.fasta > test.fasta
```

### domosaics.jar

- Right click the file *domosaics.jar* and click "Open".
- Click "Finish".
- Click "File" -> "New Projects/Views" and select "Create new Project". Input Name: "test".
- Click "Next". Select "Sequence" under "Select the data type to import", and click "Next".
- 4. Open File: Click "Browse...". Select the downloaded file *test.fasta* and click "Open". Click "Finish".
- Steps
1. Sequence view name selection: Click "Finish".

```
# Run hmmscan
HMMER3 scan bin: /Users/haruo/miniconda3/bin/hmmscan
HMMER3 press bin: /Users/haruo/miniconda3/bin/hmmpress
Load profiles: /Users/haruo/projects/data/pfam/Pfam-A.hmm

## Sequences
Load sequences
 Or Select Loaded View: test

## Options
 Number of CPUs: 4

## Post processing
 Co-Occurring Domain Detection: Pfam v27
```

### references

https://pubmed.ncbi.nlm.nih.gov/37606665/
J Mol Evol
. 2023 Aug 22. doi: 10.1007/s00239-023-10128-x. Online ahead of print.
Systematic Analysis of Diverse Polynucleotide Kinase Clp1 Family Proteins in Eukaryotes: Three Unique Clp1 Proteins of Trypanosoma brucei
Motofumi Saito 1 2, Rerina Inose 1, Asako Sato 1, Masaru Tomita 1 2 3, Haruo Suzuki 1 3, Akio Kanai 4 5 6
https://link.springer.com/article/10.1007/s00239-023-10128-x
Domain Analysis of Clp1 Family Proteins
The domain structures of the Clp1 family proteins were estimated using the following two methods: (1) Using the entire aa sequence of each Clp1 family protein as the query, the Pfam-A database (Mistry et al. 2021), in which known domains are registered, was searched using HMMER (ver. 3.2) (Mistry et al. 2013), set to an E-value of ≤ 1e − 3. Their domain structures were visualized using DoMosaics (ver. Rv0.95) (Moore et al. 2014), and (2) for protein regions that were not hit in the domain search, a sequence similarity search using BLASTP was performed (E-value of ≤ 1e − 4 and query coverage of ≥ 30%). 

https://pubmed.ncbi.nlm.nih.gov/31513263/
Genome Biol Evol
. 2019 Oct 1;11(10):2713-2726. doi: 10.1093/gbe/evz195.
Large-Scale Molecular Evolutionary Analysis Uncovers a Variety of Polynucleotide Kinase Clp1 Family Proteins in the Three Domains of Life
Motofumi Saito 1 2, Asako Sato 1, Shohei Nagata 1 2, Satoshi Tamaki 1, Masaru Tomita 1 2 3, Haruo Suzuki 1 3, Akio Kanai 1 2 3
https://academic.oup.com/gbe/article/11/10/2713/5568290?login=false
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6777427/
To extract the protein domains, an HMMER (ver. 3.2) search (Potter et al. 2018) of the Pfam-A protein domain database was performed with an E-value of ≤1e − 4. The domain structures and sequence alignment of the Clp1 family proteins were visualized with DoMosaics (version rv0.95) (Moore et al. 2014).

fig. 1.
—Phylogeny and domain structure of Clp1 family proteins in the three domains of life.
Domains were visualized with DoMosaics.

2021.05.16
作者: Kyoka Sato
https://doi.org/10.7875/togotv.2021.045
https://www.youtube.com/watch?v=5VCYcgJ7unI
09:50
DoMosaicsを使ってドメイン構造と系統樹を可視化する
DoMosaics は、複数のタンパク質のドメイン構造と系統関係が簡単に調べられるウェブツールです。これによって、どのようなドメインが進化の過程で獲得されたのか、また欠落したのかを推定することができます。ドメイン検索のためのデータベースをPfamからダウンロードする方法や、検索用プログラム(hmmscan、hmmpress)をHMMERからダウンロードしてインストールする方法を解説したあとに、サンプルデータを使って、DoMosaicsの使い方を紹介します。
https://dbarchive.biosciencedbc.jp/data/togotv/movie/210516_test.txt

2020.04.18
https://bi.biopapyrus.jp/db/pfam.html
Pfam | タンパク質ドメインファミリーのデータベース

2017.12.12
https://doi.org/10.7875/togotv.2017.125
Pfamを使ってタンパク質のドメインを調べる 2017

http://kazumaxneo.hatenablog.com/entry/2017/07/31/114955
タンパク質ドメインを検索する HMMER - macでインフォマティクス

----------
## GRD

https://metasystems.riken.jp/grd/
GRD - Genomic-based 16S ribosomal RNA Database

https://metasystems.riken.jp/grd/download.html
Download various subsets of the GRD database
Datasets (excluding sequences with Ns)
All 16S

```
# ディレクトリを作成する
# make directories
mkdir -p ~/projects/data/grd

# ディレクトリを移動する
# change directories
cd ~/projects/data/grd/

# ファイルをダウンロードする
# download files
wget -b https://metasystems.riken.jp/grd/download/grd_all_201304.zip

# `tail -f`でファイル出力を監視する（Control-Cで動作中のプロセスを停止）
# Use `tail -f` to constantly monitor files (use Control-C to stop)
tail -f wget-log

# `unzip`コマンドでファイルを展開する
# decompress files with the command `unzip`
unzip grd_all_201304.zip

# ディレクトリを移動する
# change directories
cd grd_all_201304/

# データの検査
# Inspecting data
grep "Lactobacillus brevis ATCC 367" *
grep -A 1 "NC_008497" sequence.fasta

(base) ~/projects/data/grd/grd_all_201304 $grep "NC_008497" sequence.fasta
>NC_008497_01
>NC_008497_02
>NC_008497_03
>NC_008497_04
>NC_008497_05

(base) ~/projects/data/grd $du -sh *
24M	grd_all_201304
1.1M	grd_all_201304.zip

```


----------
## ddbj_16S

https://www.ddbj.nig.ac.jp/download.html
ダウンロード
16S rRNA (Prokaryotes) <ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/>
最新 DDBJ リリースから 16S rRNA 配列データを抽出したもの

```
# ディレクトリを作成し移動する
# make directories
mkdir -p ~/projects/data/ddbj/16S
# change to the directory
cd ~/projects/data/ddbj/16S/

# *readme.txt*ファイルをダウンロードする
# download *readme.txt* file 
curl -O ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/readme.txt

# *16S.fasta.gz*ファイルをダウンロードする
# download *16S.fasta.gz* file
wget -b ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/16S.fasta.gz

# `gunzip｀コマンドでファイルを展開する
# decompress files with the command `gunzip`
gunzip -c 16S.fasta.gz > 16S.fasta

# データの検査
# Inspecting data
grep "^>" 16S.fasta | grep "Lactobacillus brevis ATCC 367"

(base) ~/projects/data/ddbj/16S $grep -A 1 "Lactobacillus brevis ATCC 367" 16S.fasta
>CP000416_1|Lactobacillus brevis ATCC 367|16S ribosomal RNA
tgagagtttgatcctggctcaggacgaacgctggcggcatgcctaatacatgcaagtcga
--
>CP000416_2|Lactobacillus brevis ATCC 367|16S ribosomal RNA
tgagagtttgatcctggctcaggacgaacgctggcggcatgcctaatacatgcaagtcga
--
>CP000416_3|Lactobacillus brevis ATCC 367|16S ribosomal RNA
tgagagtttgatcctggctcaggacgaacgctggcggcatgcctaatacatgcaagtcga
--
>CP000416_4|Lactobacillus brevis ATCC 367|16S ribosomal RNA
tgagagtttgatcctggctcaggacgaacgctggcggcatgcctaatacatgcaagtcga
--
>CP000416_5|Lactobacillus brevis ATCC 367|16S ribosomal RNA
tgagagtttgatcctggctcaggacgaacgctggcggcatgcctaatacatgcaagtcga

(base) ~/projects/data/ddbj/16S $du -sh *
1.1G	16S.fasta
113M	16S.fasta.gz

```

----------
## rrnDB
リボソームRNAオペロンのコピー数データベース [rrnDB](https://rrndb.umms.med.umich.edu/)

### shell script

シェルスクリプト*run_rrnDB.sh*を取得し実行する:  
```
# Downloading the shell script
curl -O https://raw.githubusercontent.com/haruosuz/bioinfo/master/2019/scripts/run_rrnDB.sh

# Running the shell script
(time bash ./run_rrnDB.sh &) >& log.rrnDB.$(date +%F).txt
```

### step by step tutorial

[Download](https://rrndb.umms.med.umich.edu/static/download/)から、16S rRNAをコードするDNA塩基配列のFASTA形式ファイルを取得する


```
# ディレクトリを作成し移動する
# make directories
mkdir -p ~/projects/data/rrnDB
# change to the directory
cd ~/projects/data/rrnDB/

# retrieving data
curl -O https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.5_16S_rRNA.fasta.zip
unzip rrnDB-5.5_16S_rRNA.fasta.zip

# データの検査
# Inspecting data
grep "Lactobacillus brevis ATCC 367" rrnDB-5.5_16S_rRNA.fasta

(base) ~/projects/data/rrnDB $grep -A 1 "Lactobacillus brevis ATCC 367" rrnDB-5.5_16S_rRNA.fasta
>Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|1504661..1506235 -
TTCCTTAGAAAGGAGGTGATCCAGCCGCAGGTTCTCCTACGGCTACCTTGTTACGACTTCACCCTAATCATCTGTCCCA
--
>Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|1146796..1148370 -
TTCCTTAGAAAGGAGGTGATCCAGCCGCAGGTTCTCCTACGGCTACCTTGTTACGACTTCACCCTAATCATCTGTCCCA
--
>Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|562987..564561 +
ATAAGATGAGAGTTTGATCCTGGCTCAGGACGAACGCTGGCGGCATGCCTAATACATGCAAGTCGAACGAGCTTCCGTT
--
>Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|453208..454782 +
ATAAGATGAGAGTTTGATCCTGGCTCAGGACGAACGCTGGCGGCATGCCTAATACATGCAAGTCGAACGAGCTTCCGTT
--
>Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|86143..87717 +
ATAAGATGAGAGTTTGATCCTGGCTCAGGACGAACGCTGGCGGCATGCCTAATACATGCAAGTCGAACGAGCTTCCGTT


(base) ~/projects/data/rrnDB $du -sh *
85M	rrnDB-5.5_16S_rRNA.fasta
5.1M	rrnDB-5.5_16S_rRNA.fasta.zip


Begin forwarded message:

Subject: RE: Reverse Complement for rrnDB-5.5_16S_rRNA
Date: September 12, 2019 23:43:54 JST
Cc: "rrndbsupport@umich.edu" <rrndbsupport@umich.edu>

Thank you for reaching out to us.  Those 16S sequences are copied as-is from the respective assembly as NCBI.  If you look at the fasta headers, say by doing:

$ grep 'Lactobacillus brevis ATCC 367' rrnDB-5.5_16S_rRNA.fasta
Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|1504661..1506235 -
Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|1146796..1148370 -
Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|562987..564561 +
Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|453208..454782 +
Lactobacillus brevis ATCC 367|GCF_000014465.1|NC_008497.1|Chromosome: ANONYMOUS|86143..87717 +

you can see that they are cut out of sequence NC_008497.1 at the given coordinates.  The "-" following the coordinates means the gene is on the reverse strand, so for the first two genes in the list above, you would use the reverse complement before comparing them to the last three genes (on the forward strand with "+").  

Compare this with the Genbank annotation:
https://www.ncbi.nlm.nih.gov/nuccore/NC_008497.1?report=gbwithparts&log$=seqview
Here NCBI uses the "complement" modifier with the coordinates for the genes on the reverse strand as in:

rRNA            complement(1504661..1506234)
                    /locus_tag="LVIS_RS19080"
                    /old_locus_tag="LVIS_r1545"
                    /product="16S ribosomal RNA"
                    /db_xref="GeneID:4412908"

(there seems to be a 1-base disagreement between rrnDB and the Genbank coordinates, not sure why that is)
```

----------
## plasmid.protein.faa

URL <ftp://ftp.ncbi.nih.gov/refseq/release/plasmid/> をブラウザ（Firefox または Chrome）で開く。*README* をクリックする。*plasmid.1.protein.faa.gz*ファイルを右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Open the URL <ftp://ftp.ncbi.nih.gov/refseq/release/plasmid/> with your browser (Firefox or Chrome). Click the link *README*. Right click the link *plasmid.1.protein.faa.gz*, and select "Copy Link Address".

```
# ftp://ftp.ncbi.nih.gov/refseq/release/plasmid/
plasmid.1.protein.faa.gz
plasmid.2.protein.faa.gz
plasmid.3.protein.faa.gz
plasmid.4.protein.faa.gz
plasmid.5.protein.faa.gz
plasmid.nonredundant_protein.1.protein.faa.gz
plasmid.nonredundant_protein.2.protein.faa.gz
plasmid.nonredundant_protein.3.protein.faa.gz
plasmid.nonredundant_protein.4.protein.faa.gz
plasmid.nonredundant_protein.5.protein.faa.gz
plasmid.nonredundant_protein.6.protein.faa.gz
```

From: NLM Support <nlm-support@nlm.nih.gov>
Date: November 9, 2019 4:07:45 JST

Most prokaryotic RefSeq genomes including plasmid sequences have been annotated using NCBI's annotation pipeline PGAP, which annotates prokaryotic RefSeq genomes with a new non-redundant protein data model (WP proteins or RefSeq proteins with the WP prefix). One WP protein can be annotated from multiple genomes or species, which is different previous NP or YP proteins. You can find the genomic coordinates of the WP proteins by clicking the 'Identical Proteins' on the WP protein webpages.

Details about WP proteins are available here (https://www.ncbi.nlm.nih.gov/refseq/about/prokaryotes/reannotation/) and here (https://www.ncbi.nlm.nih.gov/refseq/about/nonredundantproteins/).

### [Running R](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#running-r)
Rの起動

[作業ディレクトリ](http://cse.naro.affrc.go.jp/takezawa/r-tips/r/06.html)の変更と確認:  

    # For macOS
    # Set Working Directory
    WorkingDirectory <- "~/projects/data/ncbi/refseq_release" # assign a value to a variable
    system( paste0("mkdir -p ",WorkingDirectory) ) # Invoke a System Command
    setwd(WorkingDirectory); getwd() # Set and Get Working Directory
    dir() # List the Files in a Directory
    system("open .") # open current working directory

[インターネットからファイルをダウンロードする](http://webbeginner.hatenablog.com/entry/2015/02/06/212921)

    # Download File from the Internet
    url <- "ftp://ftp.ncbi.nih.gov/refseq/release/plasmid/plasmid.1.protein.faa.gz" # 13.9 MB
    filename <- basename(url)
    download.file(url = url, destfile = filename)

#### [Reading sequence data into R](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#reading-sequence-data-into-r)

配列データを読み込む:  

    library(seqinr) # Load the SeqinR package
    #filename <- "plasmid.1.protein.faa.gz"
    seqs <- read.fasta(file=filename, seqtype="AA", strip.desc=TRUE) # Reading sequence data

    length(seqs) # get the number of elements

配列のアノテーションを取得する:  

    # get sequence annotations
    myAnnot <- unlist(getAnnot(seqs))

    # 先頭と末尾の表示
    # Return the First or Last Part of an Object
    head(myAnnot, n = 2)
    tail(myAnnot, n = 2)

[文字列 | R で文字列の切り出しや置換などの文字列処理を行う方法](https://stats.biopapyrus.jp/r/basic/string.html)

    # grep(pattern, x) returns the positions of all elements in x that match pattern
    # grepl returns a logical vector (match or not for each element of x)
    pattern <- "TrfA"
    TF <- grepl(pattern = pattern, x = myAnnot, ignore.case = TRUE)
    sum(TF)
    myAnnot[TF]

#### [Writing sequence data out as a FASTA file](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#writing-sequence-data-out-as-a-fasta-file)

配列データをFASTA形式ファイルとして書き出す:  

	# write the sequences to a FASTA-format file
    write.fasta(sequences=seqs[TF], names=myAnnot[TF], file.out="mySequences.faa")
    dir() # List the Files in a Directory

作業を中断し再開する（Rを終了し再起動する）。作業ディレクトリを変更し、パッケージ`seqinr`を呼び出し、`read.fasta()`関数で配列データを読み込む:  

    # quit and restart R
    setwd("~/projects/data/ncbi/refseq_release") # Set Working Directory # For macOS
    library(seqinr) # Load the SeqinR package
    faa <- read.fasta(file="mySequences.faa", seqtype="AA", strip.desc=TRUE) # Reading sequence data

配列の数とアノテーションを確認する:  

    length(faa) # get the number of elements
    getAnnot(faa) # get sequence annotations

### amino acid usage
**アミノ酸使用頻度**

`[[ ]]`はリスト内の要素（ベクトル）を取り出す。
リストの1番目の要素を取り出す:  

    # extract the 1st element:
    faa1 <- faa[[1]]

`summary()`関数でデータの要約:  

    # `summary` function To Get Some Protein Statistics (length, composition, AA.Property)
    summary(faa1)

タンパク質配列の長さ(length)、アミノ酸組成(composition)、物理化学的クラスの割合(AA.Property)が出力される。

![http://www.r-exercises.com/2017/05/10/accessing-and-manipulating-biological-databases-solutions-part-3/](http://www.r-exercises.com/wp-content/uploads/2017/05/Fig3-300x300.png)

[`AAstat()`](https://www.rdocumentation.org/packages/seqinr/versions/3.3-3/topics/AAstat)
関数を用いて、タンパク質の配列情報（アミノ酸残基数、物理化学的クラスの割合、[等電点](https://ja.wikipedia.org/wiki/等電点)の理論値）を求める:  

    # Get protein statistics
    AAstat(seq=faa1)

    aa <- AAstat(seq=faa1, plot=FALSE)

    # Get amino acid counts
    aa$Compo

    # Get the percentage of each physico-chemical classes
    aa$Prop
    aa$Prop$Aromatic

[applyファミリー | R で同じ処理を”並列的”に実行する関数](https://stats.biopapyrus.jp/r/basic/apply.html)

    # Apply a Function over a List
    # `summary` function To Get Some Protein Statistics (length, composition, AA.Property)
    lapply(faa, summary)

`sapply()`関数は、リストの各要素に関数を適用する。  
複数タンパク質配列のアミノ酸使用の絶対度数と相対度数を求める:  

    # absolute frequencies
    AAU <- sapply(faa, function(x) AAstat(x, plot=FALSE)$Compo )
    write.csv(t(AAU), file="table.aa_af.csv")

    # relative frequencies
    AAU <- sapply(faa, function(x) summary(x)$composition )
    write.csv(t(AAU), file="table.aa_rf.csv")

クラスター分析 [Cluster Analysis](https://github.com/haruosuz/DS4GD/blob/master/2017/hclust.md#cluster-analysis)

    # Hierarchical cluster analysis
    plot(hclust(dist(t(AAU))), hang=-1)

ヒートマップ [Heat Map](https://github.com/haruosuz/DS4GD/blob/master/2017/hclust.md#heat-map)

    # Draw a Heat Map
    heatmap(AAU, margins=c(14, 2), cexCol=0.9, scale="none", col=rev(gray.colors(12)))

[Flip color range of heatmap in base R - Stack Overflow](https://stackoverflow.com/questions/56101927/flip-color-range-of-heatmap-in-base-r)

平成22年度、清水謙多郎 [タンパク質の配列から機能を予測する](http://www.iu.a.u-tokyo.ac.jp/lectures/AG01/100511/motif.html)


----------
## NCBI ASSEMBLY_REPORTS

[NCBI](https://ja.wikipedia.org/wiki/国立生物工学情報センター)のゲノム配列のメタデータが記載されている *assembly_summary* ファイルを用いて、目的のゲノム配列を見つける。  
Genomes Download FAQ
[How can I find the sequence and annotation of my genome of interest?](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#howtofind)
Using the [assembly summary report files](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#asmsumfiles)

URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/> をブラウザ（Firefox または Chrome）で開く。*README_assembly_summary.txt*をクリックする。  
Open the URL <ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/> with your browser (Firefox or Chrome). Click the link *README_assembly_summary.txt*.

```
# ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/README_assembly_summary.txt
The assembly_summary files report metadata for the genome assemblies on the NCBI genomes FTP site.
assembly_summary_genbank.txt            - current GenBank genome assemblies
assembly_summary_refseq.txt             - current RefSeq genome assemblies
```

- April 9, 2018 [What is the difference between RefSeq and GenBank?](https://www.ncbi.nlm.nih.gov/books/NBK50679/#RefSeqFAQ.what_is_the_difference_between_1)
- 2018-10-23 [RefSeq - JI](http://fish-evol.org/RefSeq.html) 井上 潤
- 2017.03.12 [RefSeq | 詳細な注釈づけられている冗長性のない核酸データベース](https://bi.biopapyrus.jp/db/refseq.html)

### Downloading metadata
メタデータのダウンロード

[ターミナル](http://techacademy.jp/magazine/5155)を開き、`bash`を起動する:  

    # change shell to bash
    bash

    # ディレクトリを作成する
    # make directories
    mkdir -p ~/projects/data/ncbi/assembly_reports

    # ディレクトリを移動する
    # change directories
    cd ~/projects/data/ncbi/assembly_reports/

    # カレントディレクトリを表示する 
    # print working directory
    pwd

    # カレントディレクトリをFinderで開く
    # open current directory
    open .

    # Markdown文書をダウンロードする
    #curl https://raw.githubusercontent.com/haruosuz/introBI/master/2019/markdown.md > README.$(date +%F).md

    # テキストエディタ「Atom」でファイルを開く
    #atom README.$(date +%F).md

データをウェブからダウンロードする。

    # `wget`は再帰的にデータをダウンロードできる。ウェブページからテキストファイルを全てダウンロードする:  
    # Recursive downloading can be useful for downloading all files of a certain type from a page.
    # wget --background --output-file=logfile --accept "*.mp3" --no-directories --recursive --no-parent $URL
    wget -b -o wget-log.txt -A "*.txt,*.txt.gz" -nd -r -np ftp://ftp.ncbi.nlm.nih.gov/genomes/ASSEMBLY_REPORTS/

    # `tail -f`でファイル出力を監視する（Control-Cで動作中のプロセスを停止）
    # Use `tail -f` to constantly monitor files (use Control-C to stop)
    tail -f wget-log.txt

GenBankまたはRefSeqのゲノム配列のメタデータを確認する。

    # 変数に値を割り当てる（`=`の前後にスペースを入れない）:  
    # create a variable and assign it a value with (do not use spaces around the equals sign!):  
    assembly_summary="assembly_summary_genbank.txt"
    assembly_summary="assembly_summary_refseq.txt"

    # 変数の値にアクセスするには、変数名の前にドル記号を付ける:  
    # To access a variable’s value, we use a dollar sign in front of the variable’s name (e.g., $assembly_summary):  
    echo $assembly_summary

    # 列番号を付けて出力する:
    grep "^#" $assembly_summary | tail -n 1 | tr "\t" "\n" | nl

    # Unixコマンド（`grep, cut, sort, uniq`）を組み合わせて、表形式データの列を要約:  
    # combine Unix tools (`grep, cut, sort, uniq`) to summarize columns of tabular data:
    grep -v "^#" $assembly_summary | cut -f5 | sort | uniq -c
    grep -v "^#" $assembly_summary | cut -f12 | sort | uniq -c

### Downloading data
データのダウンロード

Genomes Download FAQ
[How can I download RefSeq data for all complete bacterial genomes?](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#allcomplete)
Also see the Downloading Genomic Data Factsheet
ftp://ftp.ncbi.nlm.nih.gov/pub/factsheets/HowTo_Downloading_Genomic_Data.pdf

https://github.com/haruosuz/microbe/blob/master/references/README.bacteria.md#lactobacillus-salivarius

参照/代表ゲノム("reference genome" or "representative genome")、コンプリートゲノム("Complete Genome")配列データの最新版("latest")のURLを抽出する。  
List the ftp_path (column 20) for the assemblies of interest, in this case those that have organism_name of your interest (column 8), "latest" version_status (column 11) and "Complete Genome" assembly_level (column 12).

    # 変数に値を割り当てる（`=`の前後にスペースを入れない）:  
    # create a variable and assign it a value with (do not use spaces around the equals sign!):  
    assembly_summary="assembly_summary_genbank.txt"
    assembly_summary="assembly_summary_refseq.txt"

    # 参照/代表ゲノム("reference genome" or "representative genome")
    organism_name="Lactobacillus salivarius|Lactobacillus hayakitensis"
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" && $5 ~ /re/ {print $0}' | cut -f8,9,12 | sort -k1,1 -k2,2
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" && $5 ~ /re/ {print $20}' > ftpdirpaths

    # コンプリートゲノム("Complete Genome")
    organism_name="Lactobacillus salivarius"
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" && $12 ~ /Complete Genome/ {print $0}' | cut -f8,9,12 | sort -k1,1 -k2,2
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" && $12 ~ /Complete Genome/ {print $20}' > ftpdirpaths

    # コマンドの出力結果をファイルへ追記（リダイレクト`>>`）

    # 株名 infraspecific_name
    organism_name="Lactobacillus salivarius"
    infraspecific_name="BCRC 14759"
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $9 ~ /'"$infraspecific_name"'/ {print $0}' | cut -f8,9,12 | sort -k1,1 -k2,2
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $9 ~ /'"$infraspecific_name"'/ {print $20}' >> ftpdirpaths

    # 外群 outgroup
    organism_name="Lactobacillus hayakitensis"
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" {print $0}' | cut -f8,9,12 | sort -k1,1 -k2,2
    cat $assembly_summary | awk -F "\t" '$8 ~ /'"$organism_name"'/ && $11=="latest" {print $20}' >> ftpdirpaths

    # 
    cat ftpdirpaths

抽出されたURLをブラウザFirefox/Chromeで開く。*README.txt*ファイルをクリックする。  
Open the URL with your browser (Firefox or Chrome). Click the link *README.txt*.

Genomes Download FAQ
[What is the file content within each specific assembly directory?](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#files)

```
# ftp://ftp.ncbi.nlm.nih.gov/genomes/all/README.txt

File formats and content:

   *_genomic.gff.gz file
       Annotation of the genomic sequence(s) in Generic Feature Format Version 3
       (GFF3). Sequence identifiers are provided as accession.version.
       Additional information about NCBI's GFF files is available at 
       ftp://ftp.ncbi.nlm.nih.gov/genomes/README_GFF3.txt.

   *_genomic.fna.gz file
       FASTA format of the genomic sequence(s) in the assembly.

   *_rna_from_genomic.fna.gz
       FASTA format of the nucleotide sequences corresponding to all RNA 
       features annotated on the assembly, based on the genome sequence. 
```

配列データ（*_rna_from_genomic.fna.gz*）、[MD5](https://ja.wikipedia.org/wiki/MD5)[チェックサム](https://ja.wikipedia.org/wiki/チェックサム)ファイル（*md5checksums.txt*）を`wget`でダウンロードし、チェックサムを確認する:  

```
# Append the filename of interest, in this case "*_rna_from_genomic.fna.gz" to the FTP directory names:  
cat ftpdirpaths | awk 'BEGIN{FS=OFS="/";filesuffix="rna_from_genomic.fna.gz"}{ftpdir=$0;asm=$10;file=asm"_"filesuffix;print ftpdir,file}' > ftpfilepaths

# NCBI provides a MD5 checksum file in this directory called "md5checksums.txt":  
cat ftpdirpaths | awk 'BEGIN {FS=OFS="/"} {print $0,"md5checksums.txt"}' ftpdirpaths >> ftpfilepaths

# Use the "ftpfilepaths" file as input to `wget` to download:  
wget -i ftpfilepaths

# see the newest files
ls -lrt

# compare our checksum values with those in "md5checksums.txt" using the md5 program:
md5 *.gz
grep "_rna_from_genomic.fna.gz" md5checksums.txt*
```

`basename`コマンドは、ファイル名からパスや拡張子を削除する。  
`gunzip`コマンドでファイルを展開する:  
```
# `basename` strips paths and a suffix (e.g., extension) from filenames
# decompress files with the command `gunzip`:
for file in ./*.fna.gz; do gunzip -c $file > $(basename $file .gz); done
ls -lh *.fna*
```

### Inspecting data
データの検査

```
#cd ~/projects/data/ncbi/assembly_reports/

# `ls -lh`でファイルサイズを確認する:  
# `ls -lh` reports human-readable file sizes
ls -lh

# `head`で先頭部分を表示する
# look at the top of a file with `head`
head *.fna

# FASTA形式ファイルのヘッダ（">"で始まる行）

# `grep`でパターン"^>"にマッチする行を抽出する（Control-Cで動作中のプロセスを停止）
# use `grep` to extract lines matching the pattern "^>" (use Control-C to stop)
grep "^>" *.fna

# パイプでプログラムの入出力をつなぐ
# Pipe the standard output to the next command with the pipe character (`|`).
grep "^>" *.fna | head

# `wc -l`で行数をカウントする
# `wc -l` outputs the number of lines
grep "^>" *.fna | wc -l

# "rRNA"にマッチする行を表示する
# use `grep` to find "rRNA"
grep "^>" *.fna | grep "rRNA"

# use `grep` to count (the `-c` option stands for count) the number of lines matching the pattern
grep "^>" *.fna | grep -c "rRNA"

grep "^>" *.fna | grep "16S ribosomal RNA"

cat *_rna_from_genomic.fna > all.fna
```

- [TogoWS RESTサービスを使い倒す 2011](https://doi.org/10.7875/togotv.2011.058)  
  - [TogoWS: REST](http://togows.dbcls.jp/site/en/rest.html)  
- [RefSeq](https://github.com/haruosuz/bioinfo/blob/master/README.md#refseq)
- [DDBJ 公開形式 (Flat file)](https://www.ddbj.nig.ac.jp/ddbj/flat-file.html)
  - [FIELD COMMENTS](https://www.ddbj.nig.ac.jp/ddbj/flat-file.html#FIELD_COMMENTS)
    - [DEFINITION](https://www.ddbj.nig.ac.jp/ddbj/flat-file.html#Definition)
データの定義や遺伝子などに関する情報が簡単に記載されています。

```
# RefSeqデータのアクセッション番号を抽出する
# Extract RefSeq accession numbers
grep "^>" all.fna | grep "16S ribosomal RNA" | perl -pe 's/>lcl\|([^ ]+)_rrna_.+ (.+)\n/$1\n/g' | sort -u > my_accession.txt

# RefSeqデータの「DEFINITION」を取得する
# Retrieving "DEFINITION" field
for AC in `cat my_accession.txt`; do curl http://togows.dbcls.jp/entry/nucleotide/$AC/definition; done > my_definition.txt

# ファイルを行単位で連結する
# merge lines of files
paste my_accession.txt my_definition.txt > my_name.txt
```

### [Multiple Alignment and Phylogenetic trees](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#multiple-alignment-and-phylogenetic-trees)
多重配列アライメントと系統樹

[seqkit](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#seqkit)
で"16S ribosomal RNA"の配列を抽出し、FASTAヘッダをperlで編集する:  
```
# seqkit grep -h
myfile=all.fna
pattern="16S ribosomal RNA"
seqkit grep -nrp "${pattern}" "${myfile}" | perl -pe 's/>lcl\|([^ ]+) \[locus_tag=([^ ]+)\] (.+)\n/>$1 $2\n/g,s/ /~/g' > myseq.fasta
grep "^>" myseq.fasta
```

[統合TV](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#togotv)
[MAFFT・RAxML・FigTreeを組み合わせて分子系統解析を行う](https://doi.org/10.7875/togotv.2018.093)

[MAFFT](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#mafft)で多重整列:  
```
# mafft --help
input=myseq.fasta
output="${input}".aln
mafft "${input}" > "${output}"
```

[RAxML](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#raxml)による最尤系統樹推定:  
```
# raxmlHPC -h
sequenceFileName=myseq.fasta.aln
outputFileName="${sequenceFileName}".newick
substitutionModel=GTRGAMMA
raxmlHPC-SSE3 -s "${sequenceFileName}" -n "${outputFileName}" -m "${substitutionModel}" -p 12345
```

[FastTree](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#fasttree)による最尤系統樹推定:  
```
alignment_file=myseq.fasta.aln
tree_file="${alignment_file}".newick
FastTree -fastest -nt -gtr "${alignment_file}" > "${tree_file}"
```

[Newick](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.jargon.md#newick)形式のファイル
*myseq.fasta.aln.newick* or *RAxML_bestTree.myseq.fasta.aln.newick*
を用いて、
[FigTree](http://www.fish-evol.org/FigTree.html)や[SeaView](http://doua.prabi.fr/software/seaview)で系統樹を描く。





----------
## 2019-11-13
[Annotathon2019](https://docs.google.com/document/d/1FnPIQQJSeoPTfrB3dQz0eKIgLTBfJhxthcmcOYxmZRs/mobilebasic)
（生命科学データベースの利用価値向上のためのアノテーションマラソン）

ハッシュタグ [#annotathon](https://twitter.com/hashtag/annotathon?f=live)

- https://doi.org/10.7875/togotv.2013.035
2013-05-30 Open Refine（旧Google Refine）の使い方 応用編・TogoWS RESTを活用する
- https://doi.org/10.7875/togotv.2013.004
2013-02-12 Open Refine（旧Google Refine）の使い方 〜導入・基本編〜

----------
## LEA

[LEA](https://github.com/haruosuz/mgsa/blob/master/references/mgsa.tools.md#lea)
(Latent Environment Allocation)

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6005635/
All of data (taxonomic compositions and sample description documents) used for the machine learning process of LEA are available at MicrobeDB.jp (http://microbedb.jp/MDB/) and files in the CSV format are available at http://palaeo.nig.ac.jp/Resources/lea2018/.

```
# http://palaeo.nig.ac.jp/Resources/lea2018/
[TXT]	lea_training_samples_taxa.csv	28-Dec-2017 17:29	100M	 
[TXT]	lea_training_samples_words.csv	28-Dec-2017 17:29	45M	 

# ディレクトリを作成する
# make directories
mkdir -p ~/projects/data/lea

# ディレクトリを移動する
# change directories
cd  ~/projects/data/lea/

# ファイルをダウンロードする
# download files
wget -b -o wget-log.txt \\
http://palaeo.nig.ac.jp/Resources/lea2018/lea_training_samples_taxa.csv \\
http://palaeo.nig.ac.jp/Resources/lea2018/lea_training_samples_words.csv

# 列番号を付けて出力する
file=lea_training_samples_words.csv # 765
#file=lea_training_samples_taxa.csv # 1676
head -n 1 $file | tail -n 1 | tr "," "\n" | nl | wc -l
```

----------
## ws222
第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」

- https://www.affrc.maff.go.jp/tsukuba/top/event/workshop/ws_2019/222ws.html
- ハッシュタグ [#ws222](https://twitter.com/hashtag/ws222?f=live)
- https://togotv.dbcls.jp/?search=分子系統樹推定法:理論と応用

https://twitter.com/leeswijzer/status/1194852374193393664
［欹耳袋］先月つくばで開催された第222回農林交流センターワークショップ〈分子系統樹推定法：理論と応用〉のいくつかの動画が，ライフサイエンス統合データベースセンター（DBCLS）が運営する統合TV〈分子系統樹推定法:理論と応用〉から公開されました．
続）三中信宏「生物体系学概論 ：分類と系統のはざまで」（46:38）／斎藤成也「進化ゲノム学と系統推定」（1:22:51）／田村浩一郎「MEGA X を用いた分子系統解析」（52:33）／井上潤「分岐年代のベイズ推定」（1:04:11）／田辺晶史「分子系統学演習—データセットの作成から仮説検定まで」（3:22:39）．
続）上記動画は YouTube でも同時公開されています：〈第222回農林交流センターワークショップ 分子系統樹推定法:理論と応用〉

----------
## 2019-10-23

講義と実習内容
```
2019年10月23日（水曜日）
09時35分-10時30分	【講義】「生物体系学概論」  三中 信宏（農研機構 農業環境変動研究センター）
10時30分-12時00分 	【講義】「進化ゲノム学と系統推定」  斎藤 成也（国立遺伝学研究所）
13時00分-15時00分 	【講義・実習】「ゲノム情報の探索と配列のアラインメント」  伊藤 剛（農研機構 高度解析センター）
15時00分-17時00分	【講義・実習】「MEGA X を用いた分子系統解析」 田村 浩一郎（首都大学東京）
```

### Nobuhiro MINAKA
09時35分-10時30分	【講義】「生物体系学概論」  三中 信宏（農研機構 農業環境変動研究センター）
- https://twitter.com/leeswijzer
MINAKA Nobuhiro (@leeswijzer) / Twitter

### Naruya Saitou
10時30分-12時00分 	【講義】「進化ゲノム学と系統推定」  斎藤 成也（国立遺伝学研究所）
- https://twitter.com/Saitou_Sayer
斎藤成也 (@Saitou_Sayer) / Twitter

### Takeshi Itoh
13時00分-15時00分 	【講義・実習】「ゲノム情報の探索と配列のアラインメント」  伊藤 剛（農研機構 高度解析センター）
- https://researchmap.jp/taitoh1970
伊藤 剛
イトウ タケシ

### Koichiro Tamura
15時00分-17時00分	【講義・実習】「MEGA X を用いた分子系統解析」 田村 浩一郎（首都大学東京）
- http://www.biol.se.tmu.ac.jp/member/tamura/ja/
- http://www.biol.se.tmu.ac.jp/member/tamura/en/

## 2019-10-24
```
2019年10月24日（木曜日）
09時00分-10時30分	【講義・実習】「分岐年代のベイズ推定」  井上 潤（国立遺伝学研究所）
10時30分-12時00分	【講義・実習】「系統ネットワークの理論と応用」  北野 誉（茨城大学）
13時00分-15時00分	【講義】「かたちと遺伝子にみる相同と同形：基礎概念とデータ運用」  鈴木 誉保（農研機構 生物機能利用研究部門）
15時00分-17時00分 	【講義】「表現型の系統種間比較」  沓掛 展之（総合研究大学院大学）
```

### Jun INOUE
09時00分-10時30分	【講義・実習】「分岐年代のベイズ推定」  井上 潤（国立遺伝学研究所）
- https://researchmap.jp/JunINOUE/
- http://www.fish-evol.org/index.html
井上 潤のウェブサイト
- http://www.fish-evol.org/index_eng.html
Home page of Jun Inoue
- https://www.oist.jp/ja/news-center/news/2018/12/13/33415
遺伝子の由来を推定するウェブツール ORTHOSCOPE を開発 | 沖縄科学技術大学院大学 OIST

### KITANO Takashi
10時30分-12時00分	【講義・実習】「系統ネットワークの理論と応用」  北野 誉（茨城大学）
- https://info.ibaraki.ac.jp/Profiles/16/0001541/profile.html

### Takao Suzuki
13時00分-15時00分	【講義】「かたちと遺伝子にみる相同と同形：基礎概念とデータ運用」  鈴木 誉保（農研機構 生物機能利用研究部門）
- https://researchmap.jp/takaoksuzuki/
- https://twitter.com/HomareZuki
TKS (@HomareZuki) / Twitter

### Nobuyuki Kutsukake
15時00分-17時00分 	【講義】「表現型の系統種間比較」  沓掛 展之（総合研究大学院大学）
- http://www.esb.soken.ac.jp/research/nobuyuki_kutsukake.html

## 2019-10-25
```
2019年10月25日（金曜日）
09時00分-10時30分	【講義】「非モデル生物多種間比較によるゲノム・生態・進化の統合的研究」 奥山 雄大（国立科学博物館）
10時30分-12時00分 	【実習】「分子系統樹推定に適した配列データセットの作成」   田辺 晶史（京都大学生態学研究センター）
13時00分-14時00分	【実習】「分子進化の統計モデリングとモデル選択」  田辺 晶史
14時00分-15時00分	【実習】「最尤系統樹推定と系統樹の信頼性評価」  田辺 晶史
15時00分-16時00分	【実習】「系統樹・系統仮説の可視化と系統仮説間の統計的比較」  田辺 晶史
16時00分-17時00分	【実習】「質疑と総合討論」  三中 信宏、田辺 晶史
```

### Yudai Okuyama
09時00分-10時30分	【講義】「非モデル生物多種間比較によるゲノム・生態・進化の統合的研究」 奥山 雄大（国立科学博物館）
- https://researchmap.jp/read0128283/

### Akifumi Tanabe

10時30分-12時00分 	【実習】「分子系統樹推定に適した配列データセットの作成」   田辺 晶史（京都大学生態学研究センター）

https://www.fifthdimension.jp/documents/molphytextbook/
分子系統学演習 - データセットの作成から仮説検定まで

第222回農林交流センターワークショップで作成したデータファイル

第222回農林交流センターワークショップで用いたスライド
分子系統樹推定に適した配列データセットの作成：講義編
https://www.fifthdimension.jp/documents/molphytextbook/datapreparation_lecture.pdf
分子系統樹の推定に適しているとは？
相同である
相同
非相同
相同 = 同一の祖先形質に由来する
多重配列整列 = 相同形質の同定
整列が怪しいとき～
捨てればいい
トリミング


----------
----------
----------
----------
----------
## 2019-08-04
第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー

動画
https://togotv.dbcls.jp/?search=第3回木村資生記念進化学セミナー

https://kimuraseminar.wordpress.com/第3回-進化学セミナー-プログラム/
第1日 8月3日(土) 御殿場高原時之栖
第2日 8月4日(日) 御殿場高原時之栖
第3日 8月5日(月) 国立遺伝学研究所講堂

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




- https://github.com/haruosuz/DS4GD/blob/master/2017giga/CaseStudy.md#silva-rrna-database
- https://github.com/haruosuz/DS4GD/tree/master/2019
- https://github.com/haruosuz/introBI/blob/master/2018/CaseStudy.md
- https://github.com/haruosuz/introBI/blob/master/2018/CaseStudy.md#inspecting-data
- https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md

----------



