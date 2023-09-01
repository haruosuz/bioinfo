# Case Study
**ケーススタディ**

## Table of Contents
- [NCBI Taxonomy](#ncbi-taxonomy)
  - [ncbi_taxonomy_tree](#ncbi_taxonomy_tree)
  - [amr](#amr)
  - [taxonomizr](#taxonomizr)
  - [taxonkit](#taxonkit)
  - [togows](#togows)
- [2021-10-25](#2021-10-25) 東京大学 | 14.農学生命情報科学特論IV
- [2021-08-23](#2021-08-23) 石川県立大学

----------
## references
- https://github.com/haruosuz/bioinfo/blob/master/2020/CaseStudy.md#2020-07-06
- https://github.com/haruosuz/bioinfo
  - https://github.com/haruosuz/bioinfo/tree/master/2021
- Keio SFC
- https://github.com/haruosuz/introBI/tree/master/2021
- https://github.com/haruosuz/DS4GD/tree/master/2021giga
- https://github.com/haruosuz/DS4GD/tree/master/2021

----------
## NCBI Taxonomy
https://www.ncbi.nlm.nih.gov/taxonomy

https://integbio.jp/dbcatalog/record/nbdc00700
Taxonomy - NCBI - Integbio データベースカタログ
NCBI Entrezデータベースに少なくとも1件以上登録されている全ての生物種と上位分類名を収集したデータベースです。

2017.09.23
https://doi.org/10.7875/togotv.2017.092
NCBI Taxonomy Browserを使って、生物分類と配列情報を関連させて調べる 2017 | TogoTV

https://www.ddbj.nig.ac.jp/services/txsearch-e.html
TXSearch is a NCBI Taxonomy retrieval system provided by DDBJ.
https://www.ddbj.nig.ac.jp/services/txsearch.html
TXSearch は、DDBJ が提供する NCBI Taxonomy の検索システムです。

----------
### ncbi_taxonomy_tree

http://bioinfo.icb.ufmg.br/taxallnomy/
https://pubmed.ncbi.nlm.nih.gov/34325658/
BMC Bioinformatics
. 2021 Jul 29;22(1):388. doi: 10.1186/s12859-021-04304-3.
Taxallnomy: an extension of NCBI Taxonomy that produces a hierarchically complete taxonomic tree
Tetsu Sakamoto 1 2, J Miguel Ortega 3
https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-021-04304-3
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8323199/


7.3 years ago
https://support.bioconductor.org/p/81998/
making tree from NCBI taxonomy data for ggtree

I found a python script, https://github.com/bendmorris/taxiphy, that can read NCBI taxonomy and generate tree file in newick format. The output file can be parsed in R and visualized using ggtree.

For future visitors, consider using ETE's NCBI Taxonomy function to write the tree with your desired nodes and then later draw/manipulate it using ggtree.

http://etetoolkit.org/docs/latest/tutorial/tutorial_ncbitaxonomy.html
Dealing with the NCBI Taxonomy database — ETE Toolkit - analysis and visualization of trees

http://etetoolkit.org/docs/2.3/tutorial/tutorial_ncbitaxonomy.html
Dealing with the NCBI Taxonomy database — A Python Environment for (phylogenetic) Tree Exploration


9.2 years ago
https://www.biostars.org/p/103447/
Phylogentic tree based on Taxon id
PhyloT does this in one click for a set of taxon names or taxon ids.

https://phylot.biobyte.de/
phyloT : a phylogenetic tree generator

----------
### amr

https://github.com/haruosuz/r4bioinfo/blob/master/R_microb/README.md#amr

----------
### taxonomizr

https://cran.r-project.org/package=taxonomizr
taxonomizr: Functions to Work with NCBI Accessions and Taxonomy
Functions for assigning taxonomy to NCBI accession numbers and taxon IDs based on NCBI's accession2taxid and taxdump files. This package allows the user to downloads NCBI data dumps and create a local database for fast and local taxonomic assignment.

Materials:	README
https://cran.r-project.org/web/packages/taxonomizr/readme/README.html

Vignettes:	taxonomizr usage
https://cran.r-project.org/web/packages/taxonomizr/vignettes/usage.html
taxonomizr usage
Scott Sherrill-Mix
Introduction

----------
### taxonkit

https://bioinf.shenwei.me/taxonkit/
TaxonKit - A Cross-platform and Efficient NCBI Taxonomy Toolkit

https://github.com/shenwei356/taxonkit

12:17 PM · Apr 26, 2022
https://twitter.com/shenwei356/status/1518791263516229633
Wei Shen 沈伟 on Twitter: "Yes, with the newly created GTDB-taxdump with TaxonKit, you can clearly see the changes: four Escherichia species are merged into E.coli. E.coli_E with an ANI of 92.22% compared to E.coli was not merged, which is misclassified as E.coli in NCBI https://t.co/6yOnW0LU12 https://t.co/2PlHn0i5aU" / Twitter

3:05 PM · Apr 21, 2022
https://twitter.com/shenwei356/status/1517021784918609921
Wei Shen 沈伟 on Twitter: "The taxid-changelog even provides more details than the official taxon history. The new tool `taxonkit create-taxdump` can also apply to other genomes catalogs like MGV @kyrpides. The new tool is here, please try https://t.co/FJ1uZQzj8i" / Twitter


https://pubmed.ncbi.nlm.nih.gov/34001434/
J Genet Genomics
. 2021 Sep 20;48(9):844-850. doi: 10.1016/j.jgg.2021.03.006. Epub 2021 Apr 15.
TaxonKit: A practical and efficient NCBI taxonomy toolkit
Wei Shen 1, Hong Ren 2
https://www.sciencedirect.com/science/article/abs/pii/S1673852721000837


8:11 PM · Jan 21, 2021
https://twitter.com/shenwei356/status/1352212268583305219
Wei Shen on Twitter: "TaxonKit 0.7.0, a lightweight and efficient NCBI Taxonomy Toolkit, is 2X faster!!! It brings two new commands and add more examples and tutorials. https://t.co/GyWw7yj1NS https://t.co/mPTD2Ym1zh" / Twitter

http://kazumaxneo.hatenablog.com/entry/2019/01/23/073000
taxonomy ID、種名、系統情報など相互変換する taxonkit - macでインフォマティクス
Donwloadよりmac、linux、windows向けバイナリをダウンロードできる。


----------
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

- https://www.ncbi.nlm.nih.gov/nuccore/J00231
- http://togows.dbcls.jp/entry/nucleotide/J00231
```
LOCUS       HUMIGHAF                1089 bp    mRNA    linear   PRI 09-NOV-1994
DEFINITION  Human Ig gamma3 heavy chain disease OMM protein mRNA.
ACCESSION   J00231
VERSION     J00231.1
KEYWORDS    C-region; V-region; gamma heavy chain disease protein; gamma3 heavy
            chain disease protein; heavy chain disease; hinge exon;
            immunoglobulin gamma-chain; immunoglobulin heavy chain; secreted
            immunoglobulin.
SOURCE      Homo sapiens (human)
  ORGANISM  Homo sapiens
            Eukaryota; Metazoa; Chordata; Craniata; Vertebrata; Euteleostomi;
            Mammalia; Eutheria; Euarchontoglires; Primates; Haplorrhini;
            Catarrhini; Hominidae; Homo.
```

ブラウザ、Unixコマンド (`wget`, `curl`)、R言語を用いて、
NCBI Accession "J00231" に対応する NCBI Taxonomy を取得する例は以下の通り。

#### togows_browser
ブラウザを起動する。次のURLにアクセスする:  
Open the URL with your browser (Firefox or Chrome):  

- http://togows.dbcls.jp/entry/nucleotide/J00231/taxonomy

#### togows_unix
[ターミナル](https://techacademy.jp/magazine/5155)を起動する。ターミナルに次のコマンドを入力し、実行する:  
Open a terminal window and type in:  
```
ACCESSION=J00231
wget -O "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
curl -o "${ACCESSION}".txt http://togows.dbcls.jp/entry/nucleotide/${ACCESSION}/taxonomy
```

#### togows_R
Rを起動する。次のコマンドを実行する:  
Type R commands into the R console:  
```
ACCESSION <- "J00231"
read.table(file=paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"), sep=";")
readLines(paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"))
```

複数の NCBI Taxonomy データを取得する:  
Retrieving a list of NCBI Taxonomy data:  
```
# Make a vector containing NCBI accessions
# Create a function to retrieve NCBI taxonomy
# Retrieve NCBI taxonomy and store them in list variable "mytax"

# nucleotide
ACCESSIONs <- c("BN000925", "U67194", "AM157767", "CP006601")
               # α_RK2       β1_R751   γ_pQKH54    θ_p7ME01
togows_nucleotide_taxonomy <- function(ACCESSION) readLines(paste0("http://togows.dbcls.jp/entry/nucleotide/",ACCESSION,"/taxonomy"))
mytax <- sapply(ACCESSIONs, togows_nucleotide_taxonomy)

# protein
ACCESSIONs <- c("CAJ85684", "AAC64439", "CAJ43307", "AGS40879")
 # TrfA protein  α_RK2       β1_R751     γ_pQKH54    θ_p7ME01
togows_protein_taxonomy <- function(ACCESSION) readLines(paste0("http://togows.dbcls.jp/entry/protein/",ACCESSION,"/taxonomy"))
mytax <- sapply(ACCESSIONs, togows_protein_taxonomy)

mytaxgrepl(pattern="Bacteria", x=mytax, ignore.case=FALSE)grepl(pattern="Proteobacteria", x=mytax, ignore.case=FALSE)

```

----------
## 2021-10-25

[14.農学生命情報科学特論IV | アグリバイオインフォマティクス教育研究ユニット](http://www.iu.a.u-tokyo.ac.jp/lectures/AG14/)

### assignment
**課題**

次のURLから（Rスクリプトを含む）プロジェクト・ディレクトリをダウンロードして下さい。  
Please download the project directory (including R scripts) from the following URL.  
https://github.com/haruosuz/bioinfo/raw/master/2021/my_project_u-tokyo.zip

RStudioでRスクリプトを開く。**Compile Report**コマンドでPDFまたはHTML形式のレポートを作成する。そのレポートを課題として提出する。  
Open an R script in RStudio. Create report in PDF or HTML format using the **Compile Report** command.
Submit the report as your assignment.

[**Compile Report**](https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#compile-report)

----------
## 2021-08-23

石川県立大学

https://github.com/haruosuz/bioinfo/raw/master/2021/scripts_ishikawa-pu.zip

----------

