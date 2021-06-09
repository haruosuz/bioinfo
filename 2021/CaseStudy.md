# Case Study
**ケーススタディ**

## Table of Contents
- [2021-01-19](#2021-01-19)
- [NCBI Taxonomy](#ncbi-taxonomy)
  - [taxonkit](#taxonkit)
  - [togows](#togows)

----------
## 2021-01-19

----------
## [NCBI Taxonomy](https://www.ncbi.nlm.nih.gov/taxonomy) 

https://integbio.jp/dbcatalog/record/nbdc00700
Taxonomy - NCBI - Integbio データベースカタログ
NCBI Entrezデータベースに少なくとも1件以上登録されている全ての生物種と上位分類名を収集したデータベースです。

2017.09.23
https://doi.org/10.7875/togotv.2017.092
NCBI Taxonomy Browserを使って、生物分類と配列情報を関連させて調べる 2017 | TogoTV

### taxonkit
https://bioinf.shenwei.me/taxonkit/
TaxonKit - A Cross-platform and Efficient NCBI Taxonomy Toolkit

http://kazumaxneo.hatenablog.com/entry/2019/01/23/073000
taxonomy ID、種名、系統情報など相互変換する taxonkit - macでインフォマティクス
Donwloadよりmac、linux、windows向けバイナリをダウンロードできる。

### togows

2011.04.25
https://doi.org/10.7875/togotv.2011.058
TogoWS RESTサービスを使い倒す 2011 | TogoTV

http://togows.dbcls.jp/site/ja/index.html
TogoWS
統合ウェブサービスの概要と目的

http://togows.dbcls.jp/site/ja/rest.html
http://togows.dbcls.jp/site/en/rest.html
TogoWS REST service

Examples - NCBI Nucleotide/Protein/RefSeq
- http://togows.dbcls.jp/entry/nucleotide/J00231/taxonomy

**NCBI Accession を用いて NCBI Taxonomy を取得する例**

NCBI Accession "J00231" に対応する NCBI Taxonomy を取得する。

https://www.ncbi.nlm.nih.gov/nuccore/J00231
```
DEFINITION  Human Ig gamma3 heavy chain disease OMM protein mRNA.
ACCESSION   J00231

SOURCE      Homo sapiens (human)
  ORGANISM  Homo sapiens
            Eukaryota; Metazoa; Chordata; Craniata; Vertebrata; Euteleostomi;
            Mammalia; Eutheria; Euarchontoglires; Primates; Haplorrhini;
            Catarrhini; Hominidae; Homo.
```

ブラウザ、ターミナル（Unixコマンド `wget`, `curl`）、R言語を用いた例は以下の通り。

#) ブラウザを起動する。次のURLにアクセスする:

- http://togows.dbcls.jp/entry/nucleotide/J00231/taxonomy

#) [ターミナル](https://techacademy.jp/magazine/5155)を起動する。ターミナルに次のコマンドを入力し、実行する:
```
# http://togows.dbcls.jp/entry/nucleotide/J00231/taxonomy
ACCESSION=J00231
wget -O "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
curl -o "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
```

#) Rを起動する。
次のコマンドを実行する:
```
ACCESSION <- "J00231"
read.table(file=paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"), sep=";")
```

複数の NCBI Taxonomy データを取得する:  
Retrieving a list of NCBI Taxonomy data:  
```
# Make a vector containing NCBI accessions
ACCESSIONs <- c("CP029374", "CP037868")

# create a function to retrieve NCBI taxonomy
get_taxonomy <- function(ACCESSION) read.table(file=paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"), sep=";")

# Retrieve NCBI taxonomy and store them in list variable "taxonomy"
taxonomy <- sapply(ACCESSIONs, get_taxonomy)
taxonomy
```

上のRコードは、複数の NCBI Accession ("CP029374", "CP037868") に対応する NCBI Taxonomy データを取得する例。

https://www.ncbi.nlm.nih.gov/nuccore/CP029374
```
LOCUS       CP029374               53080 bp    DNA     circular BCT 05-JUN-2019
DEFINITION  Acidovorax citrulli strain M6 plasmid pACM6, complete sequence.
ACCESSION   CP029374 LKUW01000000 LKUW01000001-LKUW01000139

  ORGANISM  Acidovorax citrulli
            Bacteria; Proteobacteria; Betaproteobacteria; Burkholderiales;
            Comamonadaceae; Acidovorax.
```

https://www.ncbi.nlm.nih.gov/nuccore/CP037868
```
LOCUS       CP037868               45188 bp    DNA     circular BCT 17-MAR-2019
DEFINITION  Hydrogenophaga pseudoflava strain DSM 1084 plasmid pDSM1084,
            complete sequence.
ACCESSION   CP037868

  ORGANISM  Hydrogenophaga pseudoflava
            Bacteria; Proteobacteria; Betaproteobacteria; Burkholderiales;
            Comamonadaceae; Hydrogenophaga.
```

----------
## 

----------
## 

----------
