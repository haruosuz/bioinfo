Last Update: 2020-02-05

# super_advances_science
**最先端科学プログラム2020**

## Table of Contents
- 2020-02-02
- [2020-02-09](#2020-02-09) ゲノム解析実習１
- 2020-02-16 
- [2020-03-15](#2020-03-15) ゲノム解析実習２
- [2020-03-29](#2020-03-29) ゲノム解析実習３
- [2020-04-05](#2020-04-05) ゲノム解析実習４
- 2020-04-12 実験実習＠藤沢ラボ
- [2020-04-19](#2020-04-19) 最終プレゼン大会
- [references](#references) 参考文献

----------
## 2020-02-09
**ゲノム解析実習１**

- 2019年度 秋学期 [生命動態のデータサイエンス (GIGA)](https://github.com/haruosuz/DS4GD/tree/master/2019giga)
- [課題No.1 「Introduction to R」](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#assignment-1)
- R言語入門 [Introduction to R](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#how-to-install-r-and-a-brief-introduction-to-r)
- [課題No.2 「Installing R packages seqinr & Biostrings」](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#assignment-2)
- DNA配列解析(1) [DNA Sequence Statistics (1)](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#dna-sequence-statistics-1)

----------
## 2020-03-15
**ゲノム解析実習２**

- ダウンロード [2020-03-15.zip](https://github.com/haruosuz/bioinfo/raw/master/2020/analyses/2020-03-15.zip)
  - my_dotinstall_basic_r.R
  - my_project_SARS-CoV-2.R

【課題】
興味のある生物（ウイルス）の完全ゲノム配列データを取得し、DNA配列の統計値（長さ、GC含量）を計算する。
それらの値が、[NCBI Genome](https://www.ncbi.nlm.nih.gov/genome/browse)データベースに示された値 [Size, GC%] と一致することを確認する。
解析結果をまとめたレポートを提出する。

----------
## 2020-03-29
**ゲノム解析実習３**

【課題】
（共通祖先から進化・多様化した）複数の生物を比べてみる。生物学的特徴として、例えば、DNA配列の長さ（[ゲノムサイズ](https://ja.wikipedia.org/wiki/ゲノム#数と大きさ)）、[GC含量](https://ja.wikipedia.org/wiki/GC含量)、遺伝子数、複雑さ、世代時間などを比較する。タイトル、方法、結果、参考文献を記載したレポートを提出する。

【タイトルの例】
- ゲノムサイズ（GC含量）が最大（最小）の細菌
- 生物のゲノムサイズと他の特徴（複雑さ、世代時間、GC含量）の関係
- 生物の生息環境（ヒト体内、土壌）とゲノムの特徴
- 食材ゲノムの特徴（ゲノムサイズ、遺伝子数）
- 共生微生物（ウイルス、プラスミド）と宿主のGC含量の比較

【参考文献の例】
- ゲノムサイズ
  - [伊庭 斉志 "進化論的計算手法の研究スタイル"](https://www.ieice.org/ess/ESS/newsletter/N15/ga.html)
いろいろな生物のゲノムサイズを比べてみると興味深い事実に 気づく。ここでゲノムサイズとは、DNAの文字数(塩基対の数)のことである。 ファージ類は数千ないし数万の文字しか持たないのに対して、ヒトは30億と いう膨大な文字数を持っている。 その間に数百万塩基対の大腸菌、数千万塩基対の酵母、数億塩基対のショウジ ョウバエなどがある。 ただし生物の複雑さと文字数には完全な相関があるわけではない。 例えば、マウスはヒトとほとんど同じ文字数を持っているのに、サ ンショウウオはヒトよりはるかに多い文字数を持っている。 一倍体ゲノムあたりのDNA量は生物の種ごとに決まっており、C値 (C-value)と呼ばれている。
https://en.wikipedia.org/wiki/C-value
  - [Ge SX. BMC Genomics. 2017 Feb 23;18(1):200. "Exploratory bioinformatics investigation reveals importance of "junk" DNA in early embryo development."](https://www.ncbi.nlm.nih.gov/pubmed/28231763)
    - [C Value paradox: The genome sizes of eukaryotes vary greatly but do not correlate with the "complexity". Is there a link between genome size and generation time? Slowly-reproducing organisms need lots of transposable elements (TEs) for quicker adaptation.](https://twitter.com/StevenXGe/status/1082353979563130880)

![](https://pbs.twimg.com/media/DwVIzIjUUAEd8Hd?format=jpg&name=360x360)

- ゲノムの特徴 [Genome signature](https://github.com/haruosuz/DS4GD/blob/master/2018/CaseStudy.md#genome-signature)
  - [西田洋巳 (2012) ゲノム塩基配列の偏りと生物機能](http://www.iu.a.u-tokyo.ac.jp/~hnishida/tokuron4.htm)
    - ゲノムDNAのサイズとGC含量の関係では、サイズが大きくなるとGC含量が高くなる傾向にあることが示されている
    - 絶対寄生や共生にかかわる細菌のゲノムサイズは小さく、低GC含量であることも指摘された
    - 外来性のDNA（プラスミドDNA、ファージDNAなど）のGC含量が宿主細胞のクロモソームDNAのGC含量よりも低い傾向にある
  - 原核生物のゲノムサイズとGC含量との関係
    - [Almpanis A et al.  Microb Genom. 2018 Apr;4(4). "Correlation between bacterial G+C content, genome size and the G+C content of associated plasmids and bacteriophages."](https://www.ncbi.nlm.nih.gov/pubmed/29633935)
    - [Bohlin J et al. Environ Microbiol Rep. 2014 Jun;6(3):278-86. "Positive correlations between genomic %AT and genome size within strains of bacterial species."](https://www.ncbi.nlm.nih.gov/pubmed/24983532)
    - [McCutcheon JP et al. PLoS Genet. 2009 Jul;5(7):e1000565. "Origin of an alternative genetic code in the extremely small and GC-rich genome of a bacterial symbiont."](https://www.ncbi.nlm.nih.gov/pubmed/19609354)

![http://schaechter.asmblog.org/schaechter/2009/07/an-iconoclastic-endosymbiont.html](http://schaechter.asmblog.org/.a/6a00d8341c5e1453ef0115723c61fc970b-300wi)
<img alt="http://togotv.dbcls.jp/togopic.2013.18.html" src="https://dbarchive.biosciencedbc.jp/data/togo-pic/image/201306_genome_bento.png" width=30%>

- 食材ゲノム [GenomeBentoProject](http://wiki.lifesciencedb.jp/mw/GenomeBentoProject)
- [Stark et al. 2020 Global Ecology and Biogeography. "No evidence for the ‘rate‐of‐living’ theory across the tetrapod tree of life".](https://onlinelibrary.wiley.com/doi/full/10.1111/geb.13069)
  - [いわゆる『ゾウの時間　ネズミの時間』説に対する疑義。内温性外温性含む陸上性脊椎動物4100種のデータ比較、代謝速度と寿命に負の相関があるという‘rate‐of‐living’ 理論は証明されず、その平均寿命は外因によるところが大きいとのこと。](https://twitter.com/gekkou583/status/1232056543006183424)

----------





----------
## 2020-04-05
**ゲノム解析実習４**


----------
## references
**参考文献**

http://www.wasedajuku.com/curriculum/jukuiku/super_advances_science/
最先端科学プログラム｜【早稲田塾】第一志望現役合格・人財育成

https://twitter.com/hashtag/最先端科学プログラム?f=live

https://doi.org/10.7875/togotv.2018.098
2018-04-08 統計解析ソフト「R」の使い方 〜Rの導入・パッケージの導入・作図・統計解析の基本編〜

https://doi.org/10.7875/togotv.2017.043
2017-05-12 RStudioでRを直感的に使おう MacOS版 2017

2019年03月29日
https://qiita.com/piccolist/items/eb299c5b2e6ac31b641d
iPadでＲ：RStudio Cloud

2019年03月28日
https://qiita.com/piccolist/items/80734ccaa2d1a4c846a7
スマホでＲ

https://github.com/haruosuz/DS4GD/tree/master/2019giga
生命動態のデータサイエンス[DS2](GIGA/GG/GI)

https://github.com/haruosuz/introBI/tree/master/2019
バイオインフォマティクスのデータサイエンス[DS2]

https://github.com/haruosuz/books

https://r4ds.had.co.nz/workflow-basics.html

- Rをはじめよう生命科学のためのRStudio入門 [Getting Started with R](https://github.com/haruosuz/books/tree/master/r4all)
- Rではじめるデータサイエンス [R for Data Science](https://github.com/haruosuz/books/tree/master/r4ds)
  - [6 Workflow: scripts](https://github.com/haruosuz/books/blob/master/r4ds/README.md#6-workflow-scripts)
  - [27 R Markdown](https://github.com/haruosuz/books/blob/master/r4ds/README.md#27-r-markdown)



- Case Study [NCBI Genome List](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#ncbi-genome-list)
- [課題No.3 「DNA Sequence Statistics (1)」](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#assignment-3)
- DNA配列解析(2) [DNA Sequence Statistics (2)](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#dna-sequence-statistics-2)
- コロナウイルス [coronavirus](https://github.com/haruosuz/microbe/blob/master/references/microbe.virus.md#coronavirus) 解析用 R Markdown [download](https://github.com/haruosuz/bioinfo/raw/master/2020/coronavirus.tar.gz)

https://github.com/haruosuz/microbe/blob/master/references/microbe.COVID-19.md

----------


ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS

https://github.com/haruosuz/DS4GD/blob/master/2019/CaseStudy.md#ncbi-genome_reports

https://github.com/haruosuz/introBI/blob/master/2017/CaseStudy.md#2017-10-05

https://github.com/haruosuz/evolve/blob/master/references/README.evolve.jargon.md#pcm

----------

