
----------
## 2023-11-16

https://biosciencedbc.jp/event/ajacs/ajacs99.html

オンラインで使える統計解析ツールを知って・学んで・使う（AJACSオンライン18）

14:50～15:50	
Posit Cloud (旧：RStudio) を用いて生物配列データ解析に取り組む

鈴木 治夫 (慶應義塾大学 環境情報学部 准教授)

この講義では、Posit Cloud (旧：RStudio) を利用してバイオインフォマティクスに取り組みます。具体的には、SeqinR パッケージなどを使用し、生物のゲノム・遺伝子 (核酸塩基)・タンパク質 (アミノ酸) の配列データ解析を学びます。

### preparation
**準備**

Posit Cloud の無料アカウントを作成する。

参考: "RStudio Cloud を使ってウェブブラウザ上でR(Studio)を利用する" https://doi.org/10.7875/togotv.2021.022

### exercise
**演習**

https://posit.cloud/content/7010996
プロジェクトにアクセスする。「Save a Permanent Copy」ボタンを押して、自分用にプロジェクトのコピーを保存する。  

参考: https://posit.cloud/learn/guide

![https://posit.cloud/learn/guide](https://posit.cloud/images/guide/forkProject.png)

Rスクリプトを開く。
- my_0_setup.R
- my_seqinr_dna.R
- my_seqinr_dotplot.R

コマンドを実行するには
- "Run"コマンドを使用する。
- キーボード・ショートカット Cmd/Ctrl + Enter を押す。
- ["Compile Report"コマンドを使用する。](https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#compile-report)

参考: 
[実験医学増刊：バイオDBとウェブツール　ラボで使える最新70選〜知る・学ぶ・使う、バイオDX時代の羅針盤 - 羊土社
|
小野浩雅／編
|
第1章　研究を効率化する汎用ツール
|
6．RStudio Cloud ─ オンラインでデータサイエンスを行い，共有し，教え，学ぶ【鈴木治夫】
](https://www.yodosha.co.jp/yodobook/book/9784758104067/)




----------
## references

- https://github.com/haruosuz/r4bioinfo/blob/master/references/RStudioCloud.md
- 慶應義塾大学 湘南藤沢キャンパス（SFC）
  - 2023秋 生命動態のデータサイエンス https://github.com/haruosuz/DS4GD/tree/master/2023-10
  - 2023春 生命動態のデータサイエンス https://github.com/haruosuz/DS4GD/tree/master/2023-04
  - 2023秋 バイオインフォマティクスのデータサイエンス https://github.com/haruosuz/introBI/tree/master/2023-10
  - 2023春 バイオインフォマティクスのデータサイエンス https://github.com/haruosuz/introBI/tree/master/2023-04
  - 2022秋 バイオインフォマティクスのデータサイエンス https://github.com/haruosuz/introBI/blob/master/2022/README.md#r-language
- [バイオインフォマティクスデータスキル ――オープンソースツールを使ったロバストで再現性のある研究](https://www.oreilly.co.jp/books/9784873118635/)
- 福井県立大学小浜キャンパス | 集中講義「分子進化学特論」
  - https://github.com/haruosuz/bioinfo/blob/master/2022/CaseStudy.md#2022-08-22
- 東京大学 | 14.農学生命情報科学特論IV
  - https://github.com/haruosuz/bioinfo/blob/master/2022/CaseStudy.md#2022-06-16
  - https://github.com/haruosuz/bioinfo/blob/master/2021/CaseStudy.md#2021-10-25
  - https://github.com/haruosuz/bioinfo/blob/master/2020/CaseStudy.md#2020-07-06

----------

# Case Study

## Table of Contents

- [2023-11-16](#2023-11-16)　AJACSオンライン18「オンラインで使える統計解析ツールを知って・学んで・使う」
- [references](#references)
- [2023-08-21](#2023-08-21) 福井県立大学 | 分子進化学特論
- [2023-07-10](#2023-07-10) 東京大学 | 14.農学生命情報科学特論IV
- [](#)

----------
## 2023-08-22

----------
## 2023-08-21

福井県立大学小浜キャンパス | 集中講義「分子進化学特論」

8月21日(月)に自己紹介（1人あたり最大5分）。この授業で解析したい対象（タンパク質、遺伝子、ゲノム、生物など）を述べる。  

### preparation
**準備**

- R / RStudio の環境構築を行う。
  - Posit Cloud の無料アカウントを作成する。または、
  - パソコンに R と RStudio をインストールする。

参考: 
https://github.com/haruosuz/DS4GD/blob/master/2023-04/README.md#r-rstudio

### assignment
**課題**

次のURLからRスクリプトをダウンロードする。  
Download the R script from the following URL.  
https://github.com/haruosuz/DS4GD/raw/master/2023-04/scripts_ds4gd.zip

圧縮ファイル(zip)を解凍・展開し、ディレクトリに移動する。  
unzip the compressed file and change to the directory.  
```
unzip scripts_ds4gd.zip
cd scripts_ds4gd/
```

[RStudioでRスクリプトを開く。  
Open an R script in RStudio.](https://r4ds.had.co.nz/workflow-scripts.html)  

["Compile Report"コマンドを使用して、HTML形式でレポートを作成する。  
Create a report in HTML format using the "Compile Report" command.](https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#compile-report)  

HTML形式のファイル（.html）を課題として提出する。  
Submit the HTML file (.html) as your assignment.  

----------
## 2023-07-10

[14.農学生命情報科学特論IV | アグリバイオインフォマティクス教育研究ユニット](http://www.iu.a.u-tokyo.ac.jp/lectures/AG14/)

「R言語を用いた再現可能なバイオインフォマティクス」

### preparation
**準備**

- R / RStudio の環境構築を行ってください。
  - Posit Cloud の無料アカウントを作成する。または、
  - パソコンに R と RStudio をインストールする。

参考: 
https://github.com/haruosuz/DS4GD/blob/master/2023-04/README.md#r-rstudio

### assignment
**課題**

次のURLから圧縮ファイル(zip)をダウンロードして下さい。  
Please download the project directory (including R scripts) from the following URL.  
https://github.com/haruosuz/bioinfo/raw/master/2023/my_project_u-tokyo.zip

圧縮ファイル(zip)を解凍・展開し、ディレクトリに移動する。  
unzip the compressed file and change to the directory.  

[RStudioでRスクリプトを開く。  
Open an R script in RStudio.](https://r4ds.had.co.nz/workflow-scripts.html)

["Compile Report"コマンドを使用して、HTML形式でレポートを作成する。  
Create a report in HTML format using the "Compile Report" command.](https://github.com/haruosuz/DS4GD/blob/master/2020/CaseStudy.md#compile-report)

HTML形式のファイル（.html）を課題として提出する。  
Submit the HTML file (.html) as your assignment.

----------

