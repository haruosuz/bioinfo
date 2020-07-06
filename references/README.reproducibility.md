Last Update: 2020-07

----------
# reproducibility
**再現性**

## Table of Contents
- [references](#references)
  - [examples](#examples)
- [people](#people)
  - [kohske](#kohske) 高橋康介
  - [KunisatoY](#KunisatoY) 国里愛彦
- [updates](#updates)
[2019](#2019)
[2018](#2018)
[2017](#2017)
[2016](#2016)
[2015](#2015)

----------
## references

- https://en.wikipedia.org/wiki/Reproducibility
- https://ja.wikipedia.org/wiki/再現性
- https://ja.wikipedia.org/wiki/再現性の危機
- https://ja.wikipedia.org/wiki/科学的方法#再現性
- https://ja.wikipedia.org/wiki/Galaxy_(計算生物学)
再現性
透明性

https://sites.google.com/site/jssppr/home/reproducibility
心理学研究の再現性に関する論争 - 日本社会心理学会 広報委員会

https://research-compendium.science/
Research Compendium

https://swcarpentry.github.io/r-novice-gapminder/
R for Reproducible Scientific Analysis


https://codeocean.com/
Code Ocean

http://db-reproducibility.seas.harvard.edu/
DB Research Reproducibility

https://go.qiagen.com/Reproducibility
No need to worry about irreproducibility
Experimental reproducibility – more important than ever!
infographic
plasmid DNA

### books

[2019-04-01](https://github.com/haruosuz/books/blob/master/references/books.updates.md#2019-04-01)
心理学の7つの大罪

[2019-03-07](https://github.com/haruosuz/books/blob/master/references/books.updates.md#2019-03-07)
生命科学クライシス

[2018-10-11](https://github.com/haruosuz/books/blob/master/references/books.statistics.md#2018-10-11)
自然科学研究のためのR入門 ―再現可能なレポート執筆実践―

[2018-05-09](https://github.com/haruosuz/books/blob/master/references/books.statistics.md#2018-05-09)
再現可能性のすゝめ ―RStudioによるデータ解析とレポート作成―

[2017-01-27](https://github.com/haruosuz/books/blob/master/references/books.statistics.md#2017-01-27)
ダメな統計学: 悲惨なほど完全なる手引書
第10章　誰もが間違える
　10.1　再現不可能な遺伝学
　10.2　再現可能性を簡単に

### examples

https://github.com/haruosuz/books/blob/master/bds/README.md
Bioinformatics Data Skills: Reproducible and Robust Research With Open Source Tools
https://www.oreilly.com/library/view/bioinformatics-data-skills/9781449367480/ch01.html
Reproducible Research
So what is a reproducible bioinformatics project? At the very least, it’s sharing your project’s code and data. 

http://www.cell.com/cell-systems/pdfExtended/S2405-4712(15)00002-2
Supplemental Code and Scripts
NYC地下鉄メタゲノム(PathoMap)論文の解析コード

https://pubmed.ncbi.nlm.nih.gov/27340092/
Nat Commun
. 2016 Jun 24;7:11939. doi: 10.1038/ncomms11939.
A Key Genetic Factor for Fucosyllactose Utilization Affects Infant Gut Microbiota Development
https://www.nature.com/articles/ncomms11939#MOESM1822
A key genetic factor for fucosyllactose utilization affects infant gut microbiota development | Nature Communications
https://static-content.springer.com/esm/art%3A10.1038%2Fncomms11939/MediaObjects/41467_2016_BFncomms11939_MOESM1822_ESM.pdf
```
Supplementary Table 3. Analysis workflow and QIIME parameter settings used in this study

QIIME and Unix command a Options

a MacQIIME version 1.8.0 (http://www.wernerlab.org/software/macqiime) was used in this study.
```
解析のワークフローとQIIMEのパラメータ


https://twitter.com/JCORS3
2019-12/
https://adventar.org/calendars/4523
Japanese Community for Open and Reproducible Science (JCORS https://osf.io/z4cgu/ )企画のアドベントカレンダーです。
オープンサイエンス，研究の再現性にかかる話題を投稿ください。

----------
## people

### kohske

https://rpubs.com/kohske/595
Rスクリプトからレポート生成

2014/6/19
https://kohske.github.io/R/rstudio/
Rstudioで楽々ドキュメント生成
Rスクリプトからノートブックの作成

2018/3/12 高橋康介
https://www.slideshare.net/kohske/rrstudior-markdown
再現可能性ベストプラクティス 　解析方法とレポート作成方法の再現可能性 　RとRStudioとR Markdownを通して

### KunisatoY
Yoshihiko Kunisato
国里愛彦

https://twitter.com/KunisatoY

http://www.igaku-shoin.co.jp/paperDetail.do?id=PA03357_03
医学書院／週刊医学界新聞(第3357号 2020年02月03日)
【寄稿】
あなたの解析，再現できますか？
統計解析の再現可能性を高めるために
国里 愛彦（専修大学人間科学部心理学科准教授）

3つの再現可能性
Goodmanらは，再現可能性を，方法の再現可能性，結果の再現可能性，推論の再現可能性の3つに分けて定義している（表）。

![](http://www.igaku-shoin.co.jp/contents/picture/paper/nwsppr/n2020dir/n3357dir/n3357gif/n3357_09.jpg)

方法の再現可能性（解析の再現可能性）を高める方法

Rの場合はR Markdown，Pythonの場合はJupyter Notebookなどの便利なツールがある。
データや解析コードなどが複数存在する場合もあるので，図1のように，READMEファイル（全体の説明書の役割を果たすファイル）などを用意したり，データのフォルダと解析コードのフォルダを分けるなど，第3者がわかりやすいように解析をパッケージ化しておく

![](http://www.igaku-shoin.co.jp/contents/picture/paper/nwsppr/n2020dir/n3357dir/n3357gif/n3357_10.jpg)

Docker

![](http://www.igaku-shoin.co.jp/contents/picture/paper/nwsppr/n2020dir/n3357dir/n3357gif/n3357_11.jpg)


https://kunisatolab.github.io/main/how-to-reproducible-analysis.html
再生可能なデータ解析入門
再生可能なデータ解析のためにRを使おう！
　Rでのコードの書き方やR Markdownの使い方などは，以下のスライドで詳しく解説しているので，参照してください。
Rパッケージのパッケージ管理
解析環境のコンテナ化
Dockerの始め方
Dockerの保存・配布方法
　国里のDocker hubに登録されているDockerはちょくちょく変更されます
保存・配布したDockerの利用方法
Copyright © 2019 Yoshihiko Kunisato. All rights reserved


----------
## updates

### 2020




### 2019


2019/09/27
http://www.cl.ecei.tohoku.ac.jp/~jun/2019_0927_SNLP_Unreproducible_Research_is_Reproducible.pdf
第11回最先端NLP勉強会 || Unreproducible Research is Reproducible
（図表は論文や著者発表資料から抜粋）
[参考] “Replicability” “Repeatability”
Reproducibilityとほぼ同じような使われ方をする用語

2019/07/02
https://crds.jst.go.jp/dw/20190702/2019070220159/
NASEMが研究の再現性と複製可能性向上のために、研究の厳密性を透明性の改善方法を提案 « デイリーウォッチャー｜研究開発戦略センター（CRDS）
科学研究の再現性（reproducibility）と複製可能性（replicability）

### 2019-04

https://wired.jp/2019/04/27/darpa-wants-to-solve-sciences-replication-crisis-with-robots/
科学の「再現性の危機」に、DARPAは人工知能で対抗する｜WIRED.jp


独立した第2の討論者
https://pubmed.ncbi.nlm.nih.gov/30857597/
Br J Anaesth
. 2019 Apr;122(4):413-420. doi: 10.1016/j.bja.2018.12.010. Epub 2019 Jan 22.
Independent Discussion Sections for Improving Inferential Reproducibility in Published Research
Michael S Avidan 1, John P A Ioannidis 2, George A Mashour 3



2019.04.25
https://www.jsbi.org/news/topics/190425/
日本バイオインフォマティクス学会ニュースレター 第35号
■ 特集「データの再現性・信頼性とその向上に向けた取り組み」
・ “Reproducibility”をめぐる科学界の侃々諤々
　　河口 理紗（産業技術総合研究所 人工知能研究センター）
・ゲノム科学研究とそのデータ解析の再現性
　　二階堂 愛（理研BDR・筑波大学院）
・データ解析を再現するために必要な情報を実行可能な形式で記述する
　　大田 達郎（情報・システム研究機構 データサイエンス共同利用基盤施設 ライフサイエンス統合データベースセンター）
・つくるよ!ロボット実験センター!
　　神田 元紀（理化学研究所）

### 2018

https://pubmed.ncbi.nlm.nih.gov/30457984/
PLoS Biol
. 2018 Nov 20;16(11):e2006930. doi: 10.1371/journal.pbio.2006930. eCollection 2018 Nov.
Reproducible Research Practices, Transparency, and Open Access Data in the Biomedical Literature, 2015-2017
Joshua D Wallach 1 2, Kevin W Boyack 3, John P A Ioannidis 4 5 6 7 8




https://twitter.com/EnagoJapan/status/1038945772085997573
【エナゴ学術英語アカデミー更新】科学研究において「再現性」は、基本中の基本です。誰がその研究を試みても同様の結果を導くことができるーはずですが、実は、この「再現性」が科学界の信頼性を脅かすほどの問題となっています。https://www.enago.jp/academy/if-lose-confidence-in-your-research/ …　#エナゴアカデミー
8:22 PM - 9 Sep 2018

https://twitter.com/NatureJapan/status/1034347192054501377
Nature Human Behaviour 「Nature誌やScience誌に発表された社会科学研究に再現性はあるか？」21件の実験社会科学研究を対象に、当初の研究の約5倍の標本数を用いて検出力の高い再現実験を試みた結果、再現実験の62％で当初の研究と同じ方向の効果が見られた。
3:49 AM - 28 Aug 2018

July 13, 2018
https://peerj.com/articles/5072/
Reproducible research and GIScience: an evaluation using AGILE conference papers [PeerJ]

11 June 2018
https://www.natureindex.com/news-blog/when-it-comes-to-reproducible-science-git-is-code-for-success

https://www.ncbi.nlm.nih.gov/pubmed/29871915
MBio. 2018 Jun 5;9(3). pii: e00525-18. doi: 10.1128/mBio.00525-18.
Identifying and Overcoming Threats to Reproducibility, Replicability, Robustness, and Generalizability in Microbiome Research.
Schloss PD1.

https://twitter.com/PatSchloss/status/976090623676682240
Pat Schoss on Twitter: "I've been developing a tutorial series for those microbiome researchers interested in improving the reproducibility of their analyses. The introductory video is up on YouTube and new videos will be dropping every Tuesday and Thursday. https://t.co/ywezPTuaYA"
9:38 AM - 20 Mar 2018
http://www.riffomonas.org/reproducible_research/

MARCH 18, 2018
http://microbiology.github.io/blog/com-bio-tech/
1. Docker
2. Julia
3. Reproducible Documents


2018年3月17日
http://on-sociology.blogspot.jp/2018/03/blog-post_17.html
計量分析を用いた論文も社会的な構築物なのか？：経済学と政治学の再現性ポリシーの違い

![](https://2.bp.blogspot.com/-fdzAVQMP7sQ/Wq0fMeYk8OI/AAAAAAAACMk/QOBlAa3M46wFOPfaebg4kUHPrcsHCOcHgCLcBGAs/s640/Framework.png)

https://twitter.com/arcatdmz/status/974500312013680640
arc@dmz on Twitter: "HCI分野の研究者が研究再現性問題とどう向き合うべきか、ヒューマンインタフェース学会誌に寄稿しました。再現性の話が縦糸とすると、横糸でHCI分野概論になったと思います。この機会に昔の話もまとめました。 / “メタ科学 | jun…” https://t.co/Blre1F9qBp"
12:19 AM - 16 Mar 2018

https://junkato.jp/ja/science/

12:08 PM · Mar 16, 2018
https://twitter.com/ufsoc/status/974482463975067649
経済学の主要誌はほぼ再現性ポリシーを採用しているはずだが、この報告では9誌に掲載された203の経験的な研究論文のうち、24％がデータやコードを全く提出していなかったという。完全に再現できたのは
14%
この報告で、社会学も主要10誌のポリシーが紹介されているが、データとコードの共有の必要が2誌、推奨が2誌と紹介。

21 FEBRUARY 2018
https://www.nature.com/articles/d41586-018-02108-9
How to make replication the norm
<img src="https://media.nature.com/lw800/magazine-assets/d41586-018-02108-9/d41586-018-02108-9_15470358.jpg" alt="" width=50%>
<img src="https://media.nature.com/lw800/magazine-assets/d41586-018-02108-9/d41586-018-02108-9_15470360.jpg" alt="" width=50%>


2018/3/12 高橋康介
https://www.slideshare.net/kohske/rrstudior-markdown
再現可能性ベストプラクティス 　解析方法とレポート作成方法の再現可能性 　RとRStudioとR Markdownを通して

### 201-03-13

11:02 AM · Mar 15, 2018
https://twitter.com/KayokoShioda/status/974103524589096960
近年科学雑誌がデータやコードの開示を求めるようになっているので、その有効性をしらべた論文。著者らは雑誌 #サイエンス に載っていた論文をランダムに204本抽出し、公開データ＆コードを用いて結果の再現を試みるが、26％でしか再現できなかったと。このルールはないよりましだが完璧ではない #PNAS
#サイエンス のルールに従って #データの開示 を求めたときの、著者からの反応がかなり面白い。「お前誰だよ。このコード書くのにどんだけ時間かかったと思ってんだよ」（のもっと丁寧バージョン）みたいな反応も。（論文参照）#データ＆#コードシェア のポリシーを理解してない人がまだまだいるみたい

10:40 PM · Mar 13, 2018
https://twitter.com/uranus_2/status/973554423677927429
Scienceに掲載された計算科学研究、オーサーにデータとコードを求めたら44%でそれらが得られて(開示するようポリシーが定められていたにもかかわらず)、結果が再現できたのは26%

https://pubmed.ncbi.nlm.nih.gov/29531050/
Proc Natl Acad Sci U S A
. 2018 Mar 13;115(11):2584-2589. doi: 10.1073/pnas.1708290115. Epub 2018 Mar 12.
An Empirical Analysis of Journal Policy Effectiveness for Computational Reproducibility
Victoria Stodden 1, Jennifer Seiler 2, Zhaokun Ma 2




### 201-03-13



https://twitter.com/yuji_ikegaya/status/973450246154940417
池谷裕二 on Twitter: "【科学のデータはときに再現性がないが それでも科学が進歩するのはなぜか】①そもそも科学者は発表されるデータが全て正しいとは信じていない（ミスもあるし不正もある）。②だから問題をあげつらうよりも、重要な発見に注視して議論しあう傾向がある。今朝の『PNAS』より→https://t.co/aZHaUJJ52g"
2:46 AM - 13 Mar 2018
http://www.pnas.org/content/early/2018/03/08/1711786114
Scientific progress despite irreproducibility: A seeming paradox | PNAS

- 2018-02-05 ["科学的根拠"って信用できると思った？｜東原兄弟の、筋トレで鍛える人生力](https://ameblo.jp/toharas-musclelifestyle/entry-12350045279.html)

https://www.ncbi.nlm.nih.gov/pubmed/29092073
J Am Med Inform Assoc. 2018 Jan 1;25(1):4-12. doi: 10.1093/jamia/ocx120.
Reproducible Bioconductor workflows using browser-based interactive notebooks and containers.
Almugbel R1, Hung LH1, Hu J1, Almutairy A1, Ortogero N2, Tamta Y1, Yeung KY1.

### 2017

https://www.biorxiv.org/content/early/2017/12/26/239947
Reproducible Bioinformatics Project: A community for reproducible bioinformatics analysis pipelines
http://reproducible-bioinformatics.org

![](http://reproducible-bioinformatics.org/1/images/440_0_4982595_171497.jpg)

https://uribo.hatenablog.com/entry/2017/12/10/145149
2017年度版 RStudioを使ったReproducible Research、補足ポエム - cucumber flesh

2017-12-01
https://trattoriainutano.tumblr.com/post/168391519927
データ解析が再現するということ、あるいは Common Workflow Language が僕らにもたらしてくれるもの

<img alt="" src="https://qiita-image-store.s3.amazonaws.com/0/400/3dab48e3-b6a9-eae0-87c6-c32969b86b86.png" width=50%>

2017年01月26日 Sneha Kulkarni
https://www.editage.jp/insights/irreproducibility-is-the-lack-of-an-accepted-definition-a-problem-in-itself
「再現不可能性」：統一された定義がないことが問題？ | エディテージ・インサイト
「再現可能（‘reproducible’）」と「反復可能（‘replicable’）」
「再現可能性」と「反復可能性」

- 4 Sep 2017 PeerJ - the journal on Twitter: [On the reproducibility of science: unique identification of research resources in the biomedical literature](https://twitter.com/thePeerJ/status/904911469904580608) Published September 5, 2013
- 2017年8月28日 [「再現性の危機」― 検証プロジェクトで浮き彫りに | Editage Insights](http://www.editage.jp/insights/the-reproducibility-projects-first-findings-highlight-reproducibility-crisis)
 - Jan. 18, 2017 [Rigorous replication effort succeeds for just two of five cancer papers | Science | AAAS](http://www.sciencemag.org/news/2017/01/rigorous-replication-effort-succeeds-just-two-five-cancer-papers)




- 12 July 2017 [Investigating reproducibility and tracking provenance – A genomic workflow case study | BMC Bioinformatics | Full Text](https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-017-1747-0)
- 2017-07-05 [科学研究の再現性について | junkato.jp](http://junkato.jp/ja/blog/2017/07/05/artifact-review-for-replicability/)
- 2017-06-20 [Experimenting with reproducibility in bioinformatics](http://biorxiv.org/content/early/2017/06/20/143503)
- 2017-01-20 [危機に直面する科学研究の「再現性」 - 粥川準二｜WEBRONZA - 朝日新聞社の言論サイト](http://webronza.asahi.com/science/articles/2017010800002.html)

2017-01-10
http://www.natureasia.com/ja-jp/nathumbehav/abstracts/82836
「再現可能な科学」のためのマニフェスト | おすすめのコンテンツ | Nature Human Behaviour | Nature Research

<img src="http://www.natureasia.com/figures/95066.jpg" alt="" width=50%>

### 2016

https://pubmed.ncbi.nlm.nih.gov/27252173/
Review Sci Transl Med
. 2016 Jun 1;8(341):341ps12. doi: 10.1126/scitranslmed.aaf5027.
What Does Research Reproducibility Mean?
Steven N Goodman 1, Daniele Fanelli 2, John P A Ioannidis 2
https://stm.sciencemag.org/content/scitransmed/8/341/341ps12.full.pdf

### 2016-07
2016, Vol. 59, No. 1
http://team1mile.com/sjpr59-1/
『心理学評論』
特集「心理学の再現可能性：我々はどこから来たのか　我々は何者か　我々はどこへ行くのか」
http://team1mile.com/sjpr59-1/contents_comment/
三中信宏 統計学の現場は一枚岩ではない

http://chitosepress.com/2016/08/16/2114/
『心理学評論』特集：心理学の再現可能性

http://chitosepress.com/2015/11/09/404/
心理学研究は信頼できるか？――再現可能性をめぐって(3)
・新たな発見をあたかももともと仮説があったかのように報告する（注：結果がわかってから仮説を作る＝Hypothesizing After the Results are Known の意味でHARKing と呼ばれます。HARKingについてはN. L. Kerrの論文（5）参照）

### 2016-12-09
https://www.ncbi.nlm.nih.gov/pubmed/27940837
Science
. 2016 Dec 9;354(6317):1240-1241. doi: 10.1126/science.aah6168.
Enhancing Reproducibility for Computational Methods

### 2016-05-25

- 2016-05-31
https://gigazine.net/news/20160531-scientists-reproducibility/
科学の「再現性」が危機に瀕している - GIGAZINE

2016-05-26
[「再現性の危機」はあるか？−調査結果−](https://www.natureasia.com/ja-jp/ndigest/v13/n8/「再現性の危機」はあるか？&minus%3B調査結果&minus%3B/77048)
Is there a reproducibility crisis in science?
動画
https://pubmed.ncbi.nlm.nih.gov/27225100/
1,500 Scientists Lift the Lid on Reproducibility

<img src="https://nd.natureasia.com/figure/5706/77048/phone/1" alt="" width=50%>
<img src="https://nd.natureasia.com/figure/5706/77048/phone/2" alt="" width=50%>

25 May 2016
https://www.nature.com/news/reality-check-on-reproducibility-1.19961
Reality check on reproducibility : Nature News & Comment
NATURE | EDITORIAL

### 2016-01

8:46 AM · Jan 6, 2016
https://twitter.com/leeswijzer/status/684521352867524612
［欹耳袋］AFPBB News「生物医科学論文の大半に不備、信頼性に疑問符」（2016年1月5日） http://ow.ly/WG7io ※「無作為に抽出した441編を分析したところ、研究の評価や再現に必要な情報のプロトコルを完全に満たしていた論文は1編しかなかった」
 元論文：Reproducible Research Practices and Transparency across the Biomedical Literature http://ow.ly/WG7Lw 4 January 2016.
 #PLOSBiology 側の対応：Editorial | Meta-Research: Broadening the Scope of PLOS Biology. http://ow.ly/WG80H 4 January 2016.

2016-01-05
https://www.afpbb.com/articles/-/3072132?pid=17149815
生物医科学論文の大半に不備、信頼性に疑問符

### 2015-08-28

2016-12-21
http://pingpongpangpong.blogspot.com/2016/12/blog-post.html
再現性なんてないさ（？）

![](https://1.bp.blogspot.com/-wgqpPf1Ww_k/WFTLRJ5_dTI/AAAAAAAABZ0/6eZHXg5KwakNx5FiG1ZESklGRf2MLG7sACLcB/s320/FreshPaint-0-2016.12.17-02.04.49.png)

18 OCTOBER 2018
https://www.nature.com/collections/prbfkwmwvz/
Challenges in irreproducible research

10:45 AM · Sep 15, 2018
https://twitter.com/drinami/status/1040778605049991168
Open Science CollaborationによるEstimating the reproducibility of psychological scienceがScienceに掲載。著名な心理学実験の再現実験は全く効果がない群と再現できる群に分かれているように見える 

28 Aug 2015
https://science.sciencemag.org/content/349/6251/aac4716
Estimating the reproducibility of psychological science | Science
Open Science Collaboration*,†

### 2015


- 2015-12-16 笠原 雅弘 [バイオインフォマティクスで実験ノートを取ろう](http://www.slideshare.net/mkasahara/ss-56193523)

2015-12-08
https://pubmed.ncbi.nlm.nih.gov/26646147/
Genome Biol
. 2015 Dec 8;16:274. doi: 10.1186/s13059-015-0850-7.
Five Selfish Reasons to Work Reproducibly
Florian Markowetz 1

Oct 22, 2015
https://twitter.com/simonhodson99/status/657031025940271105
Hey: problem of research reproducibility in bioinformatics #eres2015

<img src="https://pbs.twimg.com/media/CR4-OL4UEAAWIR5.jpg" alt="" width=50%>

2015年9月4日
https://togetter.com/li/869445
統計解析の目的：知見の一般化？それとも、傾向の確認？その場合の再現性って何？ - Togetter

母集団から標本がランダムサンプリングされているなら，ある標本で統計的に有意になった結果は母集団の傾向を正しく反映している確率が高いから，同じ母集団からランダムサンプリングされた別の標本においても同じ傾向が見出される（つまり再現性がある）ことが期待される。

Jul 13, 2015
https://twitter.com/PinkyCLangat/status/620503279647227904
Pinky Langat on Twitter: "Simple rules for #reproducibility in #bioinformatics (Sandve et al. 2013) highlighted at #smbe15 http://t.co/JwIZ4FdfKe" / Twitter
<img src="https://pbs.twimg.com/media/CJx4ayhWoAAsR02.jpg" alt="" width=50%>

- 2015-08-27 [ジャーナルで発表された論文100本の再現を目的とした研究](http://www.eurekalert.org/pub_releases_ml/2015-08/aaft-_1082415.php)
- 2015-06-09 [Irreproducible biology research costs put at $28 billion per year : Nature News & Comment](http://www.nature.com/news/irreproducible-biology-research-costs-put-at-28-billion-per-year-1.17711)
- 2015-06-04 [食品安全情報blog | データ共有の遅さが再現性の努力を妨げる](http://d.hatena.ne.jp/uneyama/20150604#p12)
 - 2015-06-03 [Sluggish data sharing hampers reproducibility effort : Nature News & Comment](http://www.nature.com/news/sluggish-data-sharing-hampers-reproducibility-effort-1.17694)

### 2013

- 2013-10-26 [再現性の無い研究論文を減らすにはどうすべきか - クマムシ博士のむしブロ](http://horikawad.hatenadiary.com/entry/20131026/1382738827)
- 2013-11 [Nature Digest](http://www.nature.com/ndigest/index_ja.html?volume=10&issue=11) | 医学生物学論文の70%以上が、再現できない! [日本語本文PDF](http://www.nature.com/ndigest/journal/v10/n11/pdf/ndigest.2013.131128.pdf)
- [医学生物学論文の70%以上が、再現できない! | Vol. 10 No. 11 | Nature ダイジェスト | Nature Research](http://www.natureasia.com/ja-jp/ndigest/v10/n11/医学生物学論文の70%25以上が、再現できない!/48353) | [原文：Nature (2013-08-01) NIH mulls rules for validating key results](http://www.ncbi.nlm.nih.gov/pubmed/23903729)
- 2013-10 ["Ten simple rules for reproducible computational research." PLoS Comput Biol. PMID: 24204232](https://www.ncbi.nlm.nih.gov/pubmed/24204232)
- Sep 29, 2016 Carole Goble [What is Reproducibility? The R* brouhaha (and how Research Objects can help)](http://www.slideshare.net/carolegoble/what-is-reproducibility-the-r-brouhaha-and-how-research-objects-can-help)

![](http://image.slidesharecdn.com/tpdl-reproscience2016-goble-160929190036/95/what-is-reproducibility-the-r-brouhaha-and-how-research-objects-can-help-9-638.jpg?cb=1475175804)

- Aug 2, 2014 Carole Goble [Results may vary: Collaborations Workshop, Oxford 2014](http://www.slideshare.net/carolegoble/results-may-vary-collaborations-workshop-oxford-2014)

![http://www.slideshare.net/carolegoble/results-may-vary-collaborations-workshop-oxford-2014](http://image.slidesharecdn.com/goble-cw2014-140802134150-phpapp01/95/results-may-vary-collaborations-workshop-oxford-2014-8-638.jpg)

- [NGS 2015 - James Taylor, Johns Hopkins University, USA on Vimeo](https://vimeo.com/121455356) Title: Accessible and Reproducible Genomics at Scale with Galaxy

----------
