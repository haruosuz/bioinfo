# Case Study
**ケーススタディ**

## Table of Contents
- [codon usage](#codon-usage) コドン使用

----------

## codon usage
**コドン使用**

複数のゲノムのコドン使用頻度を計算し、カンマ区切りファイルとして出力し、ヒートマップを作成する。

複数の.ffnファイルをNCBIから取得する:  
Retrieving .ffn files from NCBI:  
```
setwd("~/projects/data/ncbi/eutils") # Set Working Directory
library(seqinr) # Load the SeqinR package

# Make a vector containing NCBI accessions
ACCESSIONs <- c("KM670336", "AP018710", "NZ_CP014764", "NZ_CP015073", "NZ_CP020602")

# create a function to retrieve several nucleotide sequences from NCBI
## CDS nucleotide FASTA
retrieve_ncbi_ffn <- function(ACCESSION) read.fasta(file = paste0("https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=",ACCESSION,"&rettype=fasta_cds_na&retmode=text"), seqtype="DNA", strip.desc=TRUE)
```

全CDSの結合(concatenate)データのコドン使用頻度`rscu`を計算する:  
```
# Retrieve the sequences and store them in list variable
ffn.seqs <- lapply(ACCESSIONs, retrieve_ncbi_ffn)

# Codon usage for the concatenation of all CDSs
my.uco.all <- sapply(ffn.seqs, function(x) uco(unlist(x), index="rscu") )
#my.uco.all <- sapply(ffn.seqs, function(x) uco(unlist(x[sapply(x, length) > 300 & sapply(x, length) %% 3 == 0]), index="rscu") )

# Column Names
colnames(my.uco.all) <- ACCESSIONs

# Draw a Heat Map
heatmap(t(my.uco.all), margins=c(6,6), cexCol=0.5, cexRow=0.8, Colv=NA, scale="none", col=rev(gray.colors(12)))

# Exporting Data
write.csv(my.uco.all, file="my.uco.all.csv", quote=TRUE, row.names=TRUE)
```

各CDSのコドン使用頻度`rscu`を計算する:  
```
ffn.seqs <- list()
for(ACCESSION in ACCESSIONs) ffn.seqs <- c(ffn.seqs, retrieve_ncbi_ffn(ACCESSION) )

# Codon usage for each CDS
my.uco.cds <- sapply(ffn.seqs, uco, index="rscu")

# Draw a Heat Map
pdf("heatmap.pdf", width = 12, height = 8)
heatmap(t(my.uco.cds), margins=c(5,5), cexCol=0.6, cexRow=0.6, Colv=NA, scale="none", col=rev(gray.colors(12)))
dev.off()

# Exporting Data
head(colnames(my.uco.cds), 2)
head(unlist(getAnnot(ffn.seqs)), 2)
colnames(my.uco.cds) <- unlist(getAnnot(ffn.seqs))
write.csv(t(my.uco.cds), file="my.uco.cds.csv", quote=TRUE, row.names=TRUE)

# open current working directory
system("open .")
```

https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#codon-usage
大腸菌ゲノムにおける全遺伝子群と高発現遺伝子群のコドン使用頻度を計算する。

https://github.com/haruosuz/DS4GD/blob/master/2019/CaseStudy.md#codon-usage
テスト用の配列データを作成する。

https://github.com/haruosuz/DS4GD/blob/master/2018giga/CaseStudy.md#codon-usage
DNA配列の長さが3の倍数（コドン）にならないCDS（例えば、偽遺伝子 pseudogene）を解析から除外する:

https://github.com/haruosuz/DS4GD/blob/master/2018/CaseStudy.md#codon-usage
Compute codon usage differences between gene classes for identifying Predicted Highly eXpressed (PHX) and Putative Alien (PA) genes.

https://github.com/haruosuz/DS4GD/blob/master/2017giga/CaseStudy.md#codon-usage
999 coding DNA sequences (CDSs) from E. coli
CDSs from E. coli O157:H7 Sakai


----------
