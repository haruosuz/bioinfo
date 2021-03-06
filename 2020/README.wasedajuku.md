Last Update: 2020-05

# super_advances_science
**最先端科学プログラム2020**

## Table of Contents
- [2020-02-09](#2020-02-09) ゲノム解析実習１
- [2020-03-15](#2020-03-15) ゲノム解析実習２
- [2020-03-29](#2020-03-29) ゲノム解析実習３
- [2020-04-05](#2020-04-05) ゲノム解析実習４
- 2020-04-12
- [2020-04-19](#2020-04-19) 最終プレゼン大会
- [references](#references) 参考文献
  - [phylogenetics](#phylogenetics) 系統学

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

- ダウンロード [2020-03-29.zip](https://github.com/haruosuz/bioinfo/raw/master/2020/analyses/2020-03-29.zip)
```
2020-03-29/my_ncbi_overview.R
2020-03-29/my_ncbi_eukaryotes.R
2020-03-29/my_ncbi_prokaryotes.R
2020-03-29/my_ncbi_viruses.R
2020-03-29/my_ncbi_plasmids.R
```

【課題】
（共通祖先から進化・多様化した）複数の生物を比べてみる。生物学的特徴として、例えば、DNA配列の長さ（[ゲノムサイズ](https://ja.wikipedia.org/wiki/ゲノム#数と大きさ)）、[GC含量](https://ja.wikipedia.org/wiki/GC含量)、遺伝子数、複雑さ、などを比較する。「*タイトル、[導入、方法、結果と考察 (IMRAD)](https://ja.wikipedia.org/wiki/IMRAD)、参考文献*」から構成されるレポートを提出する。

【研究テーマの例】
- 原核生物、真核生物、ウイルスにおけるゲノムの特徴（ゲノムサイズ、GC含量、染色体数、遺伝子数）。
- 生物のゲノムサイズと他の特徴（GC含量、遺伝子数、複雑さ、世代時間）の相関。
- 生物のゲノムの特徴は、ライフスタイル（自由生活、共生）、生息環境（土壌、水圏、ヒト体内、人工環境）によって異なるか？
- 共生体（ウイルス、プラスミド）と宿主（細菌）のGC含量を比較する。

【参考文献】
- 食材ゲノム [GenomeBentoProject](http://wiki.lifesciencedb.jp/mw/GenomeBentoProject)

<img alt="http://togotv.dbcls.jp/togopic.2013.18.html" src="https://dbarchive.biosciencedbc.jp/data/togo-pic/image/201306_genome_bento.png" width=30%>

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

- [Stark et al. 2020 Global Ecology and Biogeography. "No evidence for the ‘rate‐of‐living’ theory across the tetrapod tree of life".](https://onlinelibrary.wiley.com/doi/full/10.1111/geb.13069)
  - [いわゆる『ゾウの時間　ネズミの時間』説に対する疑義。内温性外温性含む陸上性脊椎動物4100種のデータ比較、代謝速度と寿命に負の相関があるという‘rate‐of‐living’ 理論は証明されず、その平均寿命は外因によるところが大きいとのこと。](https://twitter.com/gekkou583/status/1232056543006183424)

----------
## 2020-04-05
**ゲノム解析実習４**

- ダウンロード [2020-04-05.zip](https://github.com/haruosuz/bioinfo/raw/master/2020/analyses/2020-04-05.zip)

【課題】
個別プロジェクトの進捗を報告する。
質問は [Slack | 最先端科学プログラム2020 | チャンネル #生命科学](https://app.slack.com/client/T010Z2U1JF6) に投稿する。

【参考文献】
- [Nextstrain](https://github.com/haruosuz/microbe/blob/master/references/microbe.COVID-19.md#nextstrain)
病原体の流行状況をゲノム配列データをもとに分析。例えば、新型コロナウイルス、季節性インフルエンザ、鳥インフルエンザ、西ナイルウイルス、おたふく風邪の原因ウイルス、ジカウイルス、西アフリカのエボラウイルス、デング熱、はしか、エンテロウイルスＤ６８、結核。
- [微生物に関する本](https://github.com/haruosuz/books/blob/master/references/books.microbe.md)
  - 2018-06-15 [ガンより怖い薬剤耐性菌](https://github.com/haruosuz/books/blob/master/references/books.microbe.md#2018-06-15) 肺炎クラミジア、ブドウ球菌、ピロリ、ボツリヌス、サルモネラ、O157…etc
  - 2017-03-21 [もやしもんと感染症屋の気になる菌辞典](https://github.com/haruosuz/books/blob/master/references/books.microbe.md#2017-03-21) マーズ・コロナウイルス

----------
## 2020-04-12

https://www.ncbi.nlm.nih.gov/genome/browse

ftp://ftp.ncbi.nlm.nih.gov/genomes/GENOME_REPORTS/README
```
overview.txt file:

Size (Mb)      Estimated genome size 
Chrs           Number of chromosomes 
```

### Organelles
https://www.ncbi.nlm.nih.gov/genome/browse#!/organelles/

https://www.pnas.org/content/112/33/10177
Mitochondrial and plastid genome architecture: Reoccurring themes, but significant differences at the extremes.
Nucleotide Composition.
There is a near-universal adenine (A) and thymine (T) bias in organelle genomes throughout the eukaryotic domain (41),

### prokaryotes

Lactobacillus属の細菌２群（vaginalとnonvaginal）のゲノムサイズとGC含量を比較した例
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3993339/figure/F1/

Staphylococcus属の細菌のゲノムサイズとGC含量を比較した例
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3317825/table/T1/

Lactobacillus, Bifidobacterium などの分離源
https://github.com/haruosuz/mgsa/blob/master/references/mgsa.tools.md#source

https://ja.wikipedia.org/wiki/乳酸菌

http://jsbac.org/youkoso/mutansStreptococci.html
ミュータンスレンサ球菌（Mutans streptococci）
ミュータンス連鎖球菌は、通性嫌気性のグラム陽性細菌で連鎖球菌の一種です。名前の由来は、変異しやすいということでミュータントの意味を含めて作られたという説があります。ムタンという多糖体を作ることから由来しているという説もあります。多くの哺乳類の口腔内に存在し、ヒトではStreptococcus mutansとStreptococcus sobrinusがあります。

https://www.kenko-kenbi.or.jp/science-center/foods/topics-foods/9507.html
フグの持つ毒素、テトロドトキシンはビブリオ属やシュードモナス属の細菌を毒素の起源とし

https://ja.wikipedia.org/wiki/シュードモナス属
Pseudomonas

https://ja.wikipedia.org/wiki/ビブリオ属
Vibrio
ビブリオ属の細菌は例外的に、大小2つの環状DNAをゲノムとして持つという特徴がある

https://bmcgenomics.biomedcentral.com/articles/10.1186/s12864-020-6735-5
All V. alginolyticus genomes contain a ~ 3.47 Mbp chromosome 1 and a ~ 1.88 Mbp chromosome 2, with a %GC content of around 44% (Table 1), which is typical for the genus Vibrio as well as for the species V. alginolyticus [29, 32]. 

https://academic.oup.com/mbe/article/34/1/93/2649121
This V. cholerae genome includes a 2.99-Mb primary chromosome (chr1) and a 1.10-Mb secondary chromosome (chr2), with %GC contents of 47.85% and 46.83%, respectively.

https://ja.wikipedia.org/wiki/マイコプラズマ
Mycoplasma

https://en.wikipedia.org/wiki/Prevotella

https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4349605/
Figure 6
The phylogenetic tree of the genus Prevotella

https://www.amed.go.jp/news/release_20191108.html
腸内微生物叢の全ゲノム解析により関節リウマチ患者の腸内細菌の特徴が明らかに | 国立研究開発法人日本医療研究開発機構
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6937407/
Figure 1
(C) Phylogenetic tree. 

https://www.nature.com/articles/s41564-018-0338-9
Megaphages infect Prevotella and variants are widespread in gut microbiomes | Nature Microbiology
We refer to these as Lak phages. CRISPR spacer targeting indicates that Lak phages infect bacteria of the genus Prevotella. We manually curated to completion 15 distinct Lak phage genomes recovered from metagenomes. 

### viruses

https://ja.wikipedia.org/wiki/モルビリウイルス属

http://www.kansensho.or.jp/ref/d06.html
ウイルス性脳炎（viral encephalitis）
病原体
ヘルペスウイルス科、日本脳炎、ロタウイルス、エンテロウイルスA71型、D68型、インフルエンザウイルス、麻疹ウイルス、風疹ウイルスなどがある。

https://artic.network/how-to-read-a-tree.html
Phylogenetics trees contain a lot of information about the inferred evolutionary relationships between a set of viruses. 
Reconstructing epidemiology
Here is the same tree as above but with the tips labeled by the type of host they were isolated from: 
You can immediately see that there is some structure there with viruses grouping by host. 

### eukaryotes

https://ja.wikipedia.org/wiki/変形菌

https://ja.wikipedia.org/wiki/酵母

https://ja.wikipedia.org/wiki/ハエ

https://ja.wikipedia.org/wiki/ハチ目
ハチ目（ハチもく、Hymenoptera）は昆虫のグループの1つ。膜翅目（まくしもく）とも呼ばれる。ハチ全般の他、アリを含む大きなグループである。

#### Araneae
クモ目

https://ja.wikipedia.org/wiki/クモ

https://www.ncbi.nlm.nih.gov/genome/browse#!/overview/Araneae

#### eel

https://ja.wikipedia.org/wiki/ニホンウナギ
Anguilla japonica
```
綱	:	条鰭綱 Actinopterygii
目	:	ウナギ目 Anguilliformes
亜目	:	ウナギ亜目 Anguilloidei
科	:	ウナギ科 Anguillidae
属	:	ウナギ属 Anguilla
種	:	ニホンウナギ A. japonica
```

https://ja.wikipedia.org/wiki/ヨーロッパウナギ
Anguilla anguilla
```
種	:	ヨーロッパウナギ A. anguilla
```

https://www.ncbi.nlm.nih.gov/genome/browse#!/overview/Anguilliformes

https://ja.wikipedia.org/wiki/タウナギ
田鰻、Monopterus albus
```
綱	:	条鰭綱 Actinopterygii
亜綱	:	新鰭亜綱 Neopterygii
上目	:	棘鰭上目 Acanthopterygii
目	:	タウナギ目 Synbranchiformes
科	:	タウナギ科 Synbranchidae　
属	:	タウナギ属 Monopterus
種	:	タウナギ M. albus
```

https://www.ncbi.nlm.nih.gov/genome/browse#!/overview/Synbranchiformes


http://www.timetree.org/
```
Japanese eel Anguilla japonica
Versus
European eel Anguilla anguilla
Median Time: 13.5 MYA
Estimated Time: 20.5 MYA
CI: (9.5 - 23.5 MYA)
```

https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md#timetree
TimeTreeで生物種間の分岐年代を調べる

#### Caretta

https://www.ncbi.nlm.nih.gov/genome/browse#!/organelles/Caretta

https://ja.wikipedia.org/wiki/アカウミガメ
Caretta caretta
```
科	:	ウミガメ科 Cheloniidae
亜科	:	アカウミガメ亜科 Carettinae
属	:	アカウミガメ属
Caretta Rafinesque, 1814[4]
種	:	アカウミガメ C. caretta
```
分類
1994年に発表された種内のミトコンドリアDNAの分子系統解析では産卵地が同じであるにもかかわらず複数の系統が含まれる（ジョージア州、サウスカロライナ州）、産卵地が全く異なる系統が単系統群を構成する（オマーンとブラジル）という結果が得られている[7]。

http://www.naro.affrc.go.jp/archive/niaes/magazine/083/mgzn08304.html
論文の紹介： 生物多様性を進化系統学的な尺度で測る (情報：農業と環境 No.83 2007.3)
たとえば保全生物学において「～の種を守れ」と言ったところで、その裏付けとなっている種概念に関する問題点は回避されるわけではない。種には、一般に受け入れられているほどの実体は何もないのだ。
すべての生物は進化的に結びついているという基本認識のもとでは、守るべきものはむしろ進化的なポテンシャルをもつ系統樹だろう。
生物保全において守るべきは、実体のない「種」ではなく、クレード（単系統群）である

http://leeswijzer.hatenablog.com/entry/2016/09/10/102132
「種問題」ははてしなく続く - archief voor stambomen
今回の Current Biology のキリン論文も，ゲノム情報を見るかぎり，キリンは分子系統樹の上で4つの「単系統群」に分かれるのだから，それぞれの単系統群を独立した「種」とみなして保全につなげるべきだという保全生物学上の “政治的種概念” を主張しただけだろう．

https://sakstyle.hatenadiary.jp/entry/20161111/p1
森元良太・田中泉吏『生物学の哲学入門』 - logical cypher scape2
［第2章］　集団的思考と進化論的世界観
マイアは、ダーウィンの偉業は集団的思考を生物学に持ち込んだことだとする。
この章の前半では、統計学の歴史が簡単に触れられる。
ラプラスとガウスによるガウス分布の証明
ケトレーによる平均的人間という新概念の考案
そして、ゴールトン
彼は、ガウス分布を正規分布normal distributionと呼び変える
誤差論を進化論へと持ち込んで、集団遺伝学への先鞭をつける
集団的思考は、アリストレス的本質主義以来の正常と異常という考え方を変化させる。
生物測定学派とメンデル学派の調停はフィッシャーが「分散」を導入したことによる

----------
## video

https://www.youtube.com/watch?v=u2xNUiKMZ9M
Nextstrain Situation Report 2020-04-03
/ 7:53

https://www.youtube.com/watch?v=7gCY9tP981I
The ongoing evolution of SARS-CoV-2
Vaughn Cooper / 11:20

https://www.youtube.com/watch?v=MHRGPzoFyEM
Evolution of SARS-CoV-2
Vaughn Cooper / 11:48

https://www.youtube.com/watch?v=Dd1RSMETXfI
nanoTalk: Seeing the Epidemic Through the Trees – Why is sequencing important for COVID-19?
Emma Hodcroft / 23:14

https://www.youtube.com/watch?v=vkCNUPJ-OIM
Emma Hodcroft's Three Minute Thesis
Emma Hodcroft / 3:17

https://doi.org/10.7875/togotv.2020.024
2020-01-24 MicrobeDB.jp version 3の活用法 @ 第42回日本分子生物学会年会
約12分です。

https://doi.org/10.7875/togotv.2019.191
2019-12-04 生物体系学概論 〜分類と系統のはざまで〜 @ 分子系統樹推定法:理論と応用 ワークショップ
約46分です。

http://www.ted.com/talks/jessica_green_are_we_filtering_the_wrong_microbes?language=ja
Jessica Green: ジェシカ・グリーン「微生物を正しく取り除くために」
July 2011 TED Talk 5:18

----------
## 2020-04-19
**最終プレゼン大会**

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

https://github.com/haruosuz/microbe/blob/master/references/microbe.COVID-19.md


- Case Study [NCBI Genome List](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#ncbi-genome-list)
- [課題No.3 「DNA Sequence Statistics (1)」](https://github.com/haruosuz/DS4GD/blob/master/2019giga/CaseStudy.md#assignment-3)
- DNA配列解析(2) [DNA Sequence Statistics (2)](https://github.com/haruosuz/r4bioinfo/blob/master/R_Avril_Coghlan/README.md#dna-sequence-statistics-2)
- コロナウイルス [coronavirus](https://github.com/haruosuz/microbe/blob/master/references/microbe.virus.md#coronavirus) 解析用 R Markdown [download](https://github.com/haruosuz/bioinfo/raw/master/2020/coronavirus.tar.gz)


https://github.com/haruosuz/evolve/blob/master/references/README.evolve.jargon.md

https://github.com/haruosuz/evolve/blob/master/references/README.evolve.tools.md

https://github.com/haruosuz/ksbn/blob/master/2018/README.2018.4.md#2018-11-30

https://haruosuz.hatenadiary.org/entry/20080813

----------
### phylogenetics
系統学

https://github.com/haruosuz/bioinfo/blob/master/references/README.bioinfo.tools.md#togotv

2018-12-04
https://twitter.com/hashtag/togotv18
https://www.medsi.co.jp/books/products/detail.php?product_id=3665
生命科学データベース・ウェブツール - 図解と動画で使い方がわかる！　研究がはかどる定番18選 -

2019-09-25
https://github.com/haruosuz/books/tree/master/DrBonoDojo
https://www.medsi.co.jp/products/detail/3708
(MEDSi)株式会社 メディカル・サイエンス・インターナショナル / 生命科学者のためのDr.Bonoデータ解析実践道場
3.3 系統樹作成

2:39 PM · Nov 14, 2019
https://twitter.com/leeswijzer/status/1194852374193393664
MINAKA Nobuhiro on Twitter: "［欹耳袋］先月つくばで開催された第222回農林交流センターワークショップ〈分子系統樹推定法：理論と応用〉のいくつかの動画が，ライフサイエンス統合データベースセンター（DBCLS）が運営する統合TV〈分子系統樹推定法:理論と応用〉から公開されました． https://t.co/OdTZC5GHoa" / Twitter

http://leeswijzer.org/cladist/PhylogenyBooks3October2018.html
分類学と系統学を学ぶためのブックガイド
（Version 3-October-2018）
三中信宏

2018-11-19
https://www.kspub.co.jp/book/detail/5138212.html
http://bookclub.kodansha.co.jp/product?item=0000275926
よくわかるバイオインフォマティクス入門/藤博幸/講談社
１章　配列解析
２章　分子系統解析

2019-06-28
https://www.morikita.co.jp/books/book/3349
進化で読み解く　バイオインフォマティクス入門
第2章　遺伝と進化に関する基礎知識
第6章　 分子系統樹作成法

6:34 PM · Jul 5, 2019
https://twitter.com/Naoki_Osada/status/1147076348285861893
長田直樹 on Twitter: "本と内容が違うところはありますが，授業で用いているもともとの資料はフリーで公開しています． https://t.co/8ch53ehQxK"

2014-01-21
https://bookclub.kodansha.co.jp/product?item=0000194810
『分子からみた生物進化　ＤＮＡが明かす生物の歴史』（宮田　隆）：ブルーバックス｜講談社BOOK倶楽部

http://cse.naro.affrc.go.jp/minaka/files/DAKARA.html
三中信宏『系統樹思考の世界：すべてはツリーとともに』―― 目次構成
第6刷（2015年4月14日刊行）

https://doi.org/10.7875/togotv.2012.033
2012-03-13 【ゲノムリテラシー講座】分子系統解析(講義3)

https://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/
ストリーミング配信 - BIRD
分子系統解析（講義３）

https://www.youtube.com/playlist?list=PL64D4C6F56371FBF8
JST BIRD ゲノムリテラシー講座 - YouTube

----------


