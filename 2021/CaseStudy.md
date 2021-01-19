# Case Study
**ケーススタディ**

## Table of Contents
- [2021-01-19](#2021-01-19)
- [NCBI Taxonomy](#ncbi-taxonomy)

----------
## 2020-07-06

----------
## [NCBI Taxonomy](https://www.ncbi.nlm.nih.gov/taxonomy) 

https://integbio.jp/dbcatalog/record/nbdc00700
Taxonomy - NCBI - Integbio データベースカタログ
NCBI Entrezデータベースに少なくとも1件以上登録されている全ての生物種と上位分類名を収集したデータベースです。160,000以上の生物種が登録されています。各エントリーには、学名、英名、階層分類、上位階層、Entrezデータベース群の収録数とリンクが含まれています。このデータベースは、種々のデータベース間で生物名の表記を統一することを目的として構築しており、分類学や系統発生学の権威となるものではありません。採用されている生物名や系統分類は、分類学的、系統発生学的に普及している内容と異なる場合があります。

2017.09.23
https://doi.org/10.7875/togotv.2017.092
NCBI Taxonomy Browserを使って、生物分類と配列情報を関連させて調べる 2017 | TogoTV
NCBI Taxonomy Databaseは生物分類に基づいて整理されたデータベースです。様々な生物種の系統(lineage)が階層的に表示され、各々の階層における類縁の生物を調べることができます。

2011.04.25
https://doi.org/10.7875/togotv.2011.058
TogoWS RESTサービスを使い倒す 2011 | TogoTV
RESTとは、DBCLSが統合ホームページで提供しているTogoWSにおいて提供されているサービスの一つです。

### taxonkit
https://bioinf.shenwei.me/taxonkit/
TaxonKit - A Cross-platform and Efficient NCBI Taxonomy Toolkit

http://kazumaxneo.hatenablog.com/entry/2019/01/23/073000
taxonomy ID、種名、系統情報など相互変換する taxonkit - macでインフォマティクス
Donwloadよりmac、linux、windows向けバイナリをダウンロードできる。

### togows

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
