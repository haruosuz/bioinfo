# Case Study
**ケーススタディ**

## Table of Contents
- [2021-01-19](#2021-01-19)
- [NCBI Taxonomy](#ncbi-taxonomy)
  - [taxonkit](#taxonkit)
  - [togows](#togows)

----------
## 2020-07-06

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

NCBIからTaxonomyを取得する例

[ターミナル](https://techacademy.jp/magazine/5155)を起動する。
ターミナルに次のコマンドを入力し、実行する:
```
# http://togows.dbcls.jp/entry/nucleotide/J00231/taxonomy
ACCESSION=J00231
curl -o "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
wget -O "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
```

Rを起動する。
```
# Make a vector containing NCBI accessions
ACCESSIONs <- c("NC_007322", "NC_007414", "AP018710")

# create a function to retrieve NCBI taxonomy
get_taxonomy <- function(ACCESSION) read.table(file=paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"), sep=";")

# Retrieve NCBI taxonomy and store them in list variable "taxonomy"
taxonomy <- sapply(ACCESSIONs, get_taxonomy)
taxonomy
```

----------
## 

----------
## 

----------
