# Case Study
**ケーススタディ**

## Table of Contents
- [Install](#install)
- [NCBI RefSeq Release](#ncbi-refseq-release)
- [ddbj_16S](#ddbj_16S)
- [rrnDB](#rrndb)
- [DoMosaics](#domosaics)
- [2019-10-23](#2019-10-23) 第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」
- [2019-10-24](#2019-10-24) 第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」
- [2019-10-25](#2019-10-25) 第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」
- [2019-08-04](#2019-08-04) 第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー
- [Sequence similarity search](#sequence-similarity-search) 配列類似性検索
- [UniProtKB Swiss-Prot protein sequence database](#uniprotkb-swiss-prot-protein-sequence-database) タンパク質配列データベース


----------

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
conda install raxml
conda install mafft
```

[seqkit](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#seqkit)
をインストールする:
```
conda install -c bioconda seqkit
```












Genomes Download FAQ
[How can I download RefSeq data for all complete bacterial genomes?](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#allcomplete)

#### [Neglected Tropical diseases](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#neglected-tropical-diseases)

例えば、[デング熱](https://ja.wikipedia.org/wiki/デング熱)を引き起こすウイルス "Dengue virus" の完全ゲノム("Complete Genome")配列データの最新版("latest")のURLを抽出する。  
List the ftp_path (column 20) for the assemblies of interest, in this case those that have organism_name of "Dengue virus" (column 8), "latest" version_status (column 11) and "Complete Genome" assembly_level (column 12).

[文字列 | R で文字列の切り出しや置換などの文字列処理を行う方法](https://stats.biopapyrus.jp/r/basic/string.html)

    # grepl returns a logical vector (match or not for each element of x)
    organism_name <- "Dengue virus"
    organism_name <- "Dengue virus|Rabies"
    TF <- grepl(pattern = organism_name, x = d$organism_name, ignore.case = TRUE) & 
     d$version_status == "latest" & grepl(pattern = "Complete Genome", x = d$assembly_level)
    d[TF,]
    d$ftp_path[TF]

抽出されたURLをブラウザFirefox/Chromeで開く。*README.txt*ファイルを右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Open the URL with your browser (Firefox or Chrome). Right click the link *README.txt*, and select "Copy Link Address".

Genomes Download FAQ
[What is the file content within each specific assembly directory?](https://www.ncbi.nlm.nih.gov/genome/doc/ftpfaq/#files)

```
# ftp://ftp.ncbi.nlm.nih.gov/genomes/all/README.txt
   *_genomic.fna.gz file
       FASTA format of the genomic sequence(s) in the assembly.
```




#### [Writing sequence data out as a FASTA file](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#writing-sequence-data-out-as-a-fasta-file)

配列データをFASTA形式ファイルとして書き出す:  

	# write the sequences to a FASTA-format file
    write.fasta(sequences=seqs, names=getAnnot(seqs), file.out="mySequences.fna", nbchar = 80)

    # open current working directory
    system("open .")

作業を中断し再開する（Rを終了し再起動する）。作業ディレクトリを変更し、パッケージ`seqinr`を呼び出し、`read.fasta()`関数で配列データを読み込む:  

    # quit and restart R
    setwd("~/projects/data/ncbi/assembly_reports") # Set Working Directory
    library(seqinr) # Load the SeqinR package
    seqs <- read.fasta(file="mySequences.fna", seqtype="DNA", strip.desc=TRUE) # Reading sequence data



----------
## NCBI RefSeq Release
plasmid.*.protein.faa.gz

URL <ftp://ftp.ncbi.nlm.nih.gov/refseq/release> をブラウザ（Firefox または Chrome）で開く。*README* をクリックする。  
Open the URL <ftp://ftp.ncbi.nlm.nih.gov/refseq/release> with your browser (Firefox or Chrome). Click the link *README*.

```
# ftp://ftp.ncbi.nlm.nih.gov/refseq/release/README

Sequence data is available in the following directories:

        ftp://ftp.ncbi.nih.gov/refseq/release/plasmid/
```

*plasmid.1.protein.faa.gz*ファイルを右クリックし、「リンクのURLをコピー (Copy Link)」する。  
Right click the link *plasmid.1.protein.faa.gz*, and select "Copy Link Address".

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
    seqs <- read.fasta(file="mySequences.faa", seqtype="AA", strip.desc=TRUE) # Reading sequence data

配列の数とアノテーションを確認する:  

    length(seqs) # get the number of elements
    unlist(getAnnot(seqs)) # get sequence annotations

----------
## ddbj_16S

https://www.ddbj.nig.ac.jp/download.html
ダウンロード
16S rRNA (Prokaryotes) <ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/>
最新 DDBJ リリースから 16S rRNA 配列データを抽出したもの

```
# ディレクトリを作成する
# make directories
mkdir -p ~/projects/data/ddbj/16S

# ディレクトリを移動する
# change directories
cd ~/projects/data/ddbj/16S/

# ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/

# *readme.txt*ファイルをダウンロードする
# download *readme.txt* file 
curl -O ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/readme.txt

# *16S.fasta.gz*ファイルをダウンロードする
# download *16S.fasta.gz* file
wget -b ftp://ftp.ddbj.nig.ac.jp/ddbj_database/16S/16S.fasta.gz

# `tail -f`でファイル出力を監視する（Control-Cで動作中のプロセスを停止）
# Use `tail -f` to constantly monitor files (use Control-C to stop)
tail -f wget-log

# `gunzip｀コマンドでファイルを展開する
# decompress files with the command `gunzip`
gunzip -c 16S.fasta.gz > 16S.fasta
```

データの検査
```
# ファイルサイズを確認する
# `ls -lh` reports human-readable file sizes
ls -lh

# `head`で先頭部分を表示する
# look at the top of a file with `head`
head 16S.fasta

# FASTA形式ファイルのヘッダ（">"で始まる行）
# `grep`でパターン"^>"にマッチする行を抽出する（Control-Cで動作中のプロセスを停止）
# use `grep` to extract lines matching the pattern "^>" (use Control-C to stop)
grep "^>" 16S.fasta

# パイプでプログラムの入出力をつなぐ
# Pipe the standard output to the next command with the pipe character (`|`).
grep "^>" 16S.fasta | head

# `wc -l`で行数をカウントする
# `wc -l` outputs the number of lines
grep "^>" 16S.fasta | wc -l
```

'Holospora'にマッチする行を表示する:
```
# use `grep` to find 'Holospora'
grep "^>" 16S.fasta | grep 'Holospora'

# use `grep` to count (the -c option stands for count) the number of lines matching the pattern
grep "^>" 16S.fasta | grep -c 'Holospora'
```

[seqkit](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#seqkit)で'Holospora'の配列を抽出する:  
```
# seqkit grep -h
myfile=16S.fasta
pattern='Holospora'
seqkit grep -nrp "${pattern}" "${myfile}" | perl -pe 's/ /./g' > myseq.fasta
```

[統合TV](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#togotv)
MAFFT・RAxML・FigTreeを組み合わせて分子系統解析を行う

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

*RAxML_bestTree.myseq.fasta.aln.newick*ファイルを用いて、
[FigTree](http://www.fish-evol.org/FigTree.html)や[SeaView](http://doua.prabi.fr/software/seaview)で系統樹を描く。

----------
## rrnDB
リボソームRNAオペロンのコピー数データベース [rrnDB](https://rrndb.umms.med.umich.edu/)

[Wolbachia](https://github.com/haruosuz/microbe/blob/master/references/README.bacteria.md#wolbachia)属に属する細菌の16S rRNA遺伝子系統解析を行う

### shell script

シェルスクリプト*run_rrnDB.sh*を取得し実行する:  
```
# Downloading the shell script
curl -O https://raw.githubusercontent.com/haruosuz/bioinfo/master/2019/scripts/run_rrnDB.sh

# Running the shell script
(time bash ./run_rrnDB.sh &) >& log.rrnDB.$(date +%F).txt
```

### step by step tutorial

[Download](https://rrndb.umms.med.umich.edu/static/download/)から、16S rRNAをコードするDNA塩基配列のFASTA形式ファイルを取得する:  
```
# retrieving data
curl -O https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.5_16S_rRNA.fasta.zip
unzip rrnDB-5.5_16S_rRNA.fasta.zip
```

"Wolbachia"にマッチする行を表示する:
```
grep "Wolbachia" rrnDB-5.5_16S_rRNA.fasta
```

"Wolbachia"の配列をseqkitで抽出し、FASTAヘッダをperlで編集する:  
```
# seqkit grep -h
myfile=rrnDB-5.5_16S_rRNA.fasta
pattern="Wolbachia"
seqkit grep -nrp "${pattern}" "${myfile}" | perl -pe 's/>([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\n/>$2\|$3\|$4\|$5\|$1\n/g,s/: /_/g' > "${myfile}"."${pattern}".fasta
```

[統合TV](https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#togotv)
MAFFT・RAxML・FigTreeを組み合わせて分子系統解析を行う

[MAFFT](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#mafft)で多重整列:  
```
# mafft --help
input=rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta
output="${input}".aln
mafft "${input}" > "${output}"
```

[RAxML](https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#raxml)による最尤系統樹推定:  
```
# raxmlHPC -h
sequenceFileName=rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta.aln
outputFileName="${sequenceFileName}".newick
substitutionModel=GTRGAMMA
raxmlHPC-SSE3 -s "${sequenceFileName}" -n "${outputFileName}" -m "${substitutionModel}" -p 12345
```

[FigTree](http://www.fish-evol.org/FigTree.html)や[SeaView](http://doua.prabi.fr/software/seaview)で系統樹を描く。


```
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
## DoMosaics

https://doi.org/10.7875/togotv.2017.077
2017-08-04 DoMosaicsを使ってドメイン構造と系統樹を可視化する

domworld <domainworld@uni-muenster.de> wrote:
the original website does not exist anymore. However, the jar file is still available here: https://domainworld.uni-muenster.de/developing/domosaics/

The current version can be found here: domosaics.jar

### Pfam

https://bi.biopapyrus.jp/db/pfam.html
Pfam | タンパク質ドメインファミリーのデータベース

https://doi.org/10.7875/togotv.2017.125
2017-12-12 Pfamを使ってタンパク質のドメインを調べる 2017

<ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam32.0/> をブラウザ（Firefox または Chrome）で開く。  
*Pfam-A.hmm.gz* を右クリックし、「リンクのURLをコピー」する。

Open the URL <ftp://ftp.ebi.ac.uk/pub/databases/Pfam/releases/Pfam32.0/> with your browser (Firefox or Chrome).  
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

http://kazumaxneo.hatenablog.com/entry/2017/07/31/114955
タンパク質ドメインを検索する HMMER - macでインフォマティクス

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








----------

http://www.leeswijzer.org/cladist/cladist-top.html
結界〈Ｔ〉の一里塚 —— 彷徨する系統樹思考者のために
- https://togetter.com/li/742642
2014年度・第188回農林交流センターワークショップ〈分子系統学の理論と実習〉ツイートまとめ - Togetter
- https://togetter.com/li/587872
2013年度・第176回農林交流センターワークショップ〈分子系統学の理論と実習〉ツイートまとめ - Togetter
- https://togetter.com/li/399359
2012年度・第166回農林交流センターワークショップ〈分子系統樹推定法：理論と応用〉 ツイートまとめ - Togetter
- https://togetter.com/li/207308
分子系統学の理論と実習 - Togetter

https://twitter.com/search?q=分子系統樹推定法：理論と応用

----------
## 2019-10-23
- ハッシュタグ [#ws222](https://twitter.com/hashtag/ws222?f=live)
- http://www.affrc.maff.go.jp/tsukuba/top/event/workshop/ws_2019/222ws.html
第222回農林交流センターワークショップ「分子系統樹推定法：理論と応用」

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
13時00分-15時00分	【講義】「かたちと遺伝子にみる相同と同形：基礎概念とデータ運用」  鈴木 誉保（農研機構 生物機能利用研究部門）
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

# 第222回農林交流センターワークショップで作成したデータファイル
```
# https://www.fifthdimension.jp/documents/molphytextbook/Drosophila/
curl -O https://www.fifthdimension.jp/documents/molphytextbook/Drosophila/Drosophila.zip
unzip Drosophila.zip
```

https://www.fifthdimension.jp/documents/molphytextbook/datapreparation_lecture.pdf
分子系統樹推定に適した配列データセットの作成：講義編

https://www.fifthdimension.jp/documents/molphytextbook/datapreparation_practice.pdf
分子系統樹推定に適した配列データセットの作成：実習編

#ws222
https://www.ncbi.nlm.nih.gov/nuccore
txid7215[Organism:exp] AND (refseq[filter] AND mitochondrion[filter])

```
# COX2 領域の切り出し
extractfeat -type CDS -tag gene -value "COX2|COII" sequence.gb COX2.nuc.fas

# COX2 塩基配列をアミノ酸に翻訳pgtranseq --table=5 COX2.nuc.fas COX2_unaligned

# COX2 アミノ酸配列を多重整列
mafft --auto --thread 4 COX2_unaligned_aa.fasta > COX2_aligned_aa.fasta
#  L-INS-i

# 整列済 COX2 アミノ酸配列をガイドにして COX2 塩基配列を 整列
pgaligncodon --alignment=COX2_aligned_aa.fasta COX2_unaligned_nuc.fasta COX2_aligned_nuc.fas

# COX2 の塩基配列から開始コドンと終止コドンを含む塩基のカ ラムを削除する ( それ以外を切り出す )
pgspliceseq 4-684 COX2_aligned_nuc.fas COX2_P.fas

```

13時00分-14時00分	【実習】「分子進化の統計モデリングとモデル選択」  田辺 晶史

https://www.fifthdimension.jp/documents/molphytextbook/modelselection_practice.pdf
分子進化の統計モデリングとモデル選択：実習編

https://www.fifthdimension.jp/documents/molphytextbook/datapreparation_lecture.pdf
分子進化の統計モデリングとモデル選択：講義編

14時00分-15時00分	【実習】「最尤系統樹推定と系統樹の信頼性評価」  田辺 晶史

https://www.fifthdimension.jp/documents/molphytextbook/maximumlikelihood_lecture.pdf
最尤系統樹推定と系統樹の信頼性評価：講義編

https://www.fifthdimension.jp/documents/molphytextbook/maximumlikelihood_practice.pdf
最尤系統樹推定と系統樹の信頼性評価：実習編

15時00分-16時00分	【実習】「系統樹・系統仮説の可視化と系統仮説間の統計的比較」  田辺 晶史

https://www.fifthdimension.jp/documents/molphytextbook/hypothesistesting_lecture.pdf
系統樹・系統仮説の可視化と系統仮説間の統計的比較：講義編

https://www.fifthdimension.jp/documents/molphytextbook/hypothesistesting_practice.pdf
系統樹・系統仮説の可視化と系統仮説間の統計的比較：実習編

```
# 2 つの系統樹を 1 つのファイルに
pgjointree \
RAxML_bestTree.whole_BIC4_ 略 _shotgunsearch_hypothesis9 \
RAxML_bestTree.whole_BIC4_ 略 _shotgunsearch_MAJi_hypothesis9 \
RAxML_forAUtest.nwk

```



- https://github.com/haruosuz/evolve/blob/master/README.md#fifthdimension
- https://www.fifthdimension.jp/documents/molphytextbook/
Life is fifthdimension.::Documents::分子系統学演習
必要なソフトウェア(Mac OS X x86_64用)
分子系統解析関連ソフト詰め合わせ
  - https://www.fifthdimension.jp/products/molphypack/
Software Package for Molecular Phylogenetic Analysis
```
# install_on_OSX.sh (for MacOS X El Capitan or Sierra on x86_64 Mac)
curl -O https://www.fifthdimension.jp/products/molphypack/install_on_OSX.sh
(time bash install_on_OSX.sh &) >& log.$(date +%F).txt
```

https://www.fifthdimension.jp/documents/molphytextbook/2011/molphytextbook.ja.pdf
```
0.11 Phylogears2 のインストール
0.11.2 MacOS X・Linux の場合

mkdir ~/temp
cd ~/temp/

# https://www.fifthdimension.jp/products/phylogears/
# Public release
# phylogears-1.0.2009.10.16.zip (script files for any Perl execution environment including MacOS X and Cygwin)
curl -O https://www.fifthdimension.jp/products/phylogears/phylogears-1.0.2009.10.16.zip
unzip phylogears-1.0.2009.10.16.zip 
cd ~/temp/phylogears-1.0.2009.10.16/bin
chmod 755 ./*
sudo mkdir -p /usr/local/bin
sudo mv ./* /usr/local/bin
cd ../share
sudo mv ./phylogears /usr/local/share/

# Alpha testing release
# phylogears2-2.0.2016.09.06.zip (script files for any Perl execution environment including MacOS X and Cygwin)
curl -O https://www.fifthdimension.jp/products/phylogears/phylogears2-2.0.2016.09.06.zip
unzip phylogears2-2.0.2016.09.06.zip 
cd ~/temp/phylogears2-2.0.2016.09.06
chmod 755 ./*
sudo mkdir -p /usr/local/bin
sudo mv ./* /usr/local/bin

# 疑似乱数生成用 Perl モジュール Math::Random::MT::Auto を別途インストール
sudo -H cpan -i Math::Random::MT::Auto
perl -e "use Math::Random::MT::Auto"
```

----------
----------
----------
----------
----------
## 2019-08-04

https://kimuraseminar.wordpress.com/第3回-進化学セミナー-プログラム/
第3回 進化学セミナー プログラム | 木村資生記念 進化学セミナー

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



