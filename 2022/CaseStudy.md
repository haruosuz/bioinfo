# Case Study
**ケーススタディ**

## Table of Contents
- [2022-12-28](#2022-12-28)
  - [VITCOMIC2](#vitcomic2)
  - [LEA](#lea)
- [video](#video)
- [references](#references)
- [2022-11-07](#2022-11-07) 東京農業大学大学院講義「微生物生命機能学」
- [2022-08-22](#2022-08-22) 福井県立大学 | 分子進化学特論
- [2022-06-16](#2022-06-16) 東京大学 | 14.農学生命情報科学特論IV
- [](#)

----------
## 2022-12-28

https://www.yodosha.co.jp/jikkenigaku/book/9784758122559/index.html
実験医学別冊：メタゲノムデータ解析　16Sも!　ショットガンも!　ロングリードも!　菌叢解析が得意になる凄技レシピ - 羊土社
Chapter2　細菌叢の組成を調べる ─16Sアンプリコン解析
|
（1）Short read
|
② VITCOMIC2，LEA【森 宙史】

----------
## VITCOMIC2
https://github.com/h-mori/vitcomic2

https://www.nig.ac.jp/nig/ja/2018/06/research-highlights_ja/20180613.html
高速かつ高精度に細菌群集の系統組成を推定するツールVITCOMIC2を開発

https://pubmed.ncbi.nlm.nih.gov/29560821/
BMC Syst Biol
. 2018 Mar 19;12(Suppl 2):30. doi: 10.1186/s12918-018-0545-2.
VITCOMIC2: visualization tool for the phylogenetic composition of microbial communities based on 16S rRNA gene amplicons and metagenomic shotgun sequencing
Hiroshi Mori 1, Takayuki Maruyama 2, Masahiro Yano 2, Takuji Yamada 2, Ken Kurokawa 3
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/

#### [Implementation](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/#Sec2title)
##### VITCOMIC2 web system
The VITCOMIC2 web server [43] can accept either a fasta or a fastq file of one 16S amplicon or metagenomic shotgun sequencing sample with read length ≥ 100 bp as the query. 

テストデータのダウンロード
Download Input data

Sample 16S rRNA gene Amplicon sequencing fastq data http://133.39.177.105/vitcomic2/SRR6325813_1.fastq.gz

配列データのアップロード
uploading an input file

http://vitcomic.org/
```
Metagenome/16S rRNA gene Amplicon Sequencing FASTA/FASTQ file: SRR6325813_1.fastq.gz
File format: FASTQ gzipped
ID: Sample1
Email: メールアドレス
```

Click **[upload&calculate]**

```
Your file was uploaded successfully!
After checking your file format, VITCOMIC2 analysis will start.
Send you an email to メールアドレス
```

When the VITCOMIC2 analysis is finished, VITCOMIC2 sends an Email to the user with a download link to the results which include a VITCOMIC2 visualization result, a genus composition text file, 
```
result/VITCOMIC_result/
 result.html: VITCOMIC2 visualization result
 *.genus.txt: genus composition text file
```

Users can conduct multiple-sample comparisons by uploading VITCOMIC2 analysis result files for selected samples to the VITCOMIC2 Comparison web server [45].
http://133.39.177.105/vitcomic2comp/index.html

#### [Results and discussion](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/#Sec11title)
##### Description of the VITCOMIC2 circular diagram

VITCOMIC2 represents the phylum and genus composition of samples and their phylogenetic relationships using a circular diagram (Fig. 3 and Fig. 4). 
| [Fig. 3](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/figure/Fig3/)
| [Fig. 4](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/figure/Fig4/)

VITCOMIC2 Comparison calculates several statistical coefficients for pairwise community comparison (Jaccard similarity, Pearson correlation, and Yue and Clayton theta similarity coefficients [7]) (Fig. 5). 
| [Fig. 5](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5861490/figure/Fig5/)

----------
# LEA
http://leamicrobe.jp/

https://www.nig.ac.jp/nig/ja/2018/06/research-highlights_ja/20180619.html
環境と微生物をビッグデータでつなぐ ～「環境」から微生物を検索し、微生物から「環境」を予測するウェブツール「LEA」を開発～

https://pubmed.ncbi.nlm.nih.gov/29874232/
PLoS Comput Biol
. 2018 Jun 6;14(6):e1006143. doi: 10.1371/journal.pcbi.1006143. eCollection 2018 Jun.
Latent environment allocation of microbial community data
Koichi Higashi 1, Shinya Suzuki 2, Shin Kurosawa 2, Hiroshi Mori 1, Ken Kurokawa 1
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6005635/

[START LEA 2D-embedding](http://snail.nig.ac.jp/lea2/)

[HOW-TO-USE](http://133.39.177.105/lea/help_en.html)
3. Global positioning of your data
|
3.1 Place a single sample on the map
|
click Data tab on the right side panel (figure below, 1). Click the Choose File button (2), select the unzipped file, and press the Submit button. Calculation takes several seconds. After the calculation, global map will be automatically updated. The color of the existing sample will be darker and your sample will be displayed as a cross marker on the map (3). Cliking the cross, you will also get taxonomic composition and topic composition data of your sample. When you click the link at the "Project ID", you can download the csv file of topic compositions of your data. Results can be cleared by clicking the Reset button.

[LEAの使い方・日本語版](http://133.39.177.105/lea/help_ja.html)
3. ユーザデータの環境予測
|
3.1 単一サンプルの環境予測
|
Dataタブをクリックして（下図 1）、「ファイルを選択」からyour_sample_id.clast_nocopy.clusterファイルを選び、Submitボタンをクリックしてください（2）。ユーザデータはマップ上で白十字マーカで表示されます（3）。マーカをクリックすると系統組成情報、トピック組成情報が右側パネルに表示されます。Project IDのリンクをクリックすると、予測されたトピック組成のデータをcsv形式でダウンロードすることができます。

----------
## video

https://github.com/haruosuz/metasub/blob/master/README.md#video

https://github.com/haruosuz/mgsa/blob/master/references/mgsa.metagenome.md#mori

----------
## references

### 2024-07-18
https://pubmed.ncbi.nlm.nih.gov/38837350/
Microbiol Resour Announc
. 2024 Jul 18;13(7):e0021024. doi: 10.1128/mra.00210-24. Epub 2024 Jun 5.
Shotgun metagenomic sequencing of swab samples from Japanese university campuses
Megumu Tsujimoto 1, Dewa A P Rasmika Dewi 2 3, Christopher E Mason 4 5 6, Yuh Shiwa 7 8, Haruo Suzuki 1 9
https://journals.asm.org/doi/10.1128/mra.00210-24
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC11256853/

### 2023-07-07
https://pubmed.ncbi.nlm.nih.gov/37420286/
BMC Res Notes
. 2023 Jul 7;16(1):142. doi: 10.1186/s13104-023-06417-9.
Evaluation of rRNA depletion methods for capturing the RNA virome from environmental surfaces
Yuh Shiwa 1 2, Tomoya Baba 3 4, Maria A Sierra 5, JangKeun Kim 6 7, Christopher E Mason 6 7 8, Haruo Suzuki 9 10
https://bmcresnotes.biomedcentral.com/articles/10.1186/s13104-023-06417-9
https://pmc.ncbi.nlm.nih.gov/articles/PMC10326927/

### 2023-01-24
https://pubmed.ncbi.nlm.nih.gov/36515525/
Microbiol Resour Announc
. 2023 Jan 24;12(1):e0109222. doi: 10.1128/mra.01092-22. Epub 2022 Dec 14.
Urban Microbiomes in Narita, Chiba, Japan: Shotgun Metagenome Sequences of a Train Station
Dewa A P Rasmika Dewi 1 2, Yuh Shiwa 3 4, Krista Ryon 5 6 7, Christopher E Mason 5 6 7, Tetsuya Matsumoto 1 8, Haruo Suzuki 9 10
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC9872656/

- https://github.com/haruosuz/bioproject
- https://github.com/haruosuz/bioproject/tree/main/PRJDB14136
- https://www.ncbi.nlm.nih.gov/bioproject/PRJDB14136
- 
- https://github.com/haruosuz/metasub/blob/master/README.md
都市のマイクロバイオーム MetaSUB: Metagenomics & Metadesign of Subways & Urban Biomes 
- 
- 慶應義塾大学 湘南藤沢キャンパス（SFC）
- 生命動態のデータサイエンス / DATA SCIENCE FOR GENOME DYNAMICS https://github.com/haruosuz/DS4GD/tree/master/2022giga
  - ゲノムの特徴 [Genome signature](https://github.com/haruosuz/DS4GD/blob/master/2018/CaseStudy.md#genome-signature)
  - ゲノムリスト [NCBI Genome List](https://github.com/haruosuz/DS4GD/blob/master/2021/CaseStudy.md#ncbi-genome-list)
- バイオインフォマティクスのデータサイエンス / DATA SCIENCE FOR BIOINFORMATICS https://github.com/haruosuz/introBI/tree/master/2022
- [バイオインフォマティクスデータスキル ――オープンソースツールを使ったロバストで再現性のある研究](https://www.oreilly.co.jp/books/9784873118635/)
- 東京大学 | 14.農学生命情報科学特論IV
  - https://github.com/haruosuz/bioinfo/blob/master/2021/CaseStudy.md#2021-10-25
  - https://github.com/haruosuz/bioinfo/blob/master/2020/CaseStudy.md#2020-07-06
- https://github.com/haruosuz/bioinfo/blob/master/2021/CaseStudy.md NCBI Taxonomy 分類群
- https://github.com/haruosuz/bioinfo/blob/master/2020/CaseStudy.md codon usage コドン使用
- https://github.com/haruosuz/r4bioinfo/blob/master/references/RStudioCloud.md

----------
## 2022-11-07

2022年11月7日（月）4限（14:40-16:10）  
東京農業大学大学院講義「微生物生命機能学」  

「バイオインフォマティクスによる微生物多様性の解明」

我々は、バイオインフォマティクスにより微生物の多様性を明らかにする研究を進めています。このまま何の対策もとらなければ、2050年には薬剤耐性菌による感染症は全世界で年間1000万人の死亡者を出すとも予測されています。細菌の染色体外DNAであるプラスミドは、薬剤耐性遺伝子をコードし、細菌細胞間を水平移動することがあります。我々は、ゲノム配列情報からプラスミドの宿主域（宿主細菌の多様性）を予測する研究を進めています。また、都市環境に存在する微生物・薬剤耐性遺伝子の多様性を明らかにするために、マイクロバイオーム（微生物群集とその遺伝子の総体）を調査しています。

----------
## 2022-08-23
## 2022-08-22

福井県立大学小浜キャンパス | 集中講義「分子進化学特論」

- 事前課題: [R/RStudio](https://github.com/haruosuz/DS4GD/blob/master/2022giga/README.md#r-rstudio) の環境構築をする。
  - RStudio Cloud の無料アカウントを作成する。あるいは
  - R と RStudio を自分のコンピュータにインストールする。
- 8月22日(月)に自己紹介（1人あたり最大5分）。本授業で解析したい興味あるオブジェクト（生物・ゲノム・遺伝子）を述べる。
- R/RStudio の実行。
  - [このURL](https://rstudio.cloud/content/4087602)から RStudio Cloud のプロジェクトにアクセスする。
  - [このURL](https://github.com/haruosuz/DS4GD/raw/master/2022giga/scripts_ds4gd.zip)からRスクリプトをダウンロードする。

----------
## 2022-06-16

[14.農学生命情報科学特論IV | アグリバイオインフォマティクス教育研究ユニット](http://www.iu.a.u-tokyo.ac.jp/lectures/AG14/)

「R言語を用いた再現可能なバイオインフォマティクス」

### assignment
**課題**

次のURLから（Rスクリプトを含む）プロジェクト・ディレクトリをダウンロードして下さい。  
Please download the project directory (including R scripts) from the following URL.  
https://github.com/haruosuz/bioinfo/raw/master/2022/my_project_u-tokyo.zip

RStudioでRスクリプトを開く。**Compile Report**コマンドでPDFまたはHTML形式のレポートを作成する。そのレポートを課題として提出する。  
Open an R script in RStudio. Create report in PDF or HTML format using the **Compile Report** command.
Submit the report as your assignment.

[**Compile Report**](https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#compile-report)

課題はITC-LMSで提出。
提出期限は6月30日23:59。

13:15-14:45
（休憩15分）
15:00-16:30

----------



