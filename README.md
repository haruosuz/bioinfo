Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2018-05-12

----------

# Bioinformatics
バイオインフォマティクス

## Table of Contents
- [Updates](#updates)
- [books](#books)
- [E-utilities](#e-utilities)
- [gff3](#gff3)
- [link](#link)
- [refseq](#refseq)
- [jsbi-nintei](#jsbi-nintei)

----------
## Updates
- [2018](https://github.com/haruosuz/bioinfo/tree/master/2018)
- [2016](https://github.com/haruosuz/bioinfo/tree/master/2016)

----------
## books

### 2004/05/10
![](https://www.kspub.co.jp/book/detail/images/153855-1.gif)

http://www.kspub.co.jp/book/detail/1538559.html
タンパク質機能解析のためのバイオインフォマティクス

http://www.bic.kyoto-u.ac.jp/toh/text.html
第２章　タンパク質の分子進化
2.4 分子進化の性質(3) - 保存のサイト特異性
2.4.3 アミノ酸残基の保存と変化
https://www.ncbi.nlm.nih.gov/pubmed/9010921
Protein Eng. 1996 Dec;9(12):1067-82.
Glutathione-independent prostaglandin D synthase as a lead molecule for designing new functional proteins.
Toh H1, Kubodera H, Nakajima N, Sekiya T, Eguchi N, Tanaka T, Urade Y, Hayaishi O.

第３章　タンパク質の 生化学的機能の解析
3.1 相同アミノ酸配列比較解析の手順
3.1.2 アラインメントからの情 報抽出
B 分子系統樹を利用した機能解析
https://www.ncbi.nlm.nih.gov/pubmed/10871367
Nucleic Acids Res. 2000 Jun 15;28(12):2353-62.
Bacterial cryptochrome and photolyase: characterization of two photolyase-like genes of Synechocystis sp. PCC6803.
Hitomi K1, Okamoto K, Daiyasu H, Miyashita H, Iwai S, Toh H, Ishiura M, Todo T.

----------
## E-utilities

https://sites.google.com/site/scriptofbioinformatics/r-tong-ji-guan-xi/rutiles-e-utilities-r
rutiles / E-utilities（R） - script of bioinformatics
E-utilitiesはNCBIが提供するAPIのサービス。
rutilesはRでE-utilitesを使うためのパッケージ。

2016年07月14日
https://qiita.com/joemphilips/items/767c67524e4b7e328834
Biopython を利用したNCBIのEntrez データベースへのアクセス

2015年12月04日
http://itnika.seesaa.net/article/430657489.html
PubMed：E-utirities API hack 2

2015年11月29日
http://itnika.seesaa.net/article/430447225.html
PubMed検索方法：Web Apiの勉強中

http://sy41211.hatenablog.com/entry/2015/11/28/085754
NCBIの "E-utilities" が結構便利な件 - バイオインフォマティクス初心者の日常

2015年01月16日
https://allabout.co.jp/gm/gc/450789/2/
Ruby／Rubyの基礎知識
APIからJSONデータを取得する(2ページ目)

----------
## gff3

2017年08月05日
https://qiita.com/MaedaTaro_Umiushi/items/48c628ca332abade1e98
Convert GFF3 to MSS for DDBJ submission - Qiita

2017年06月26日
https://qiita.com/MaedaTaro_Umiushi/items/4b9d37d23614e53a3cdf
gff3 ↔gtf の変換 - Qiita

2017-07-25
http://kazumaxneo.hatenablog.com/entry/2017/07/25/234808
BEDOPSを使いVCF, GTF, GFF などを BED に変換 する。 - macでインフォマティクス
GFF（GFF3）をbedに変換する。

2017-06-10
http://kazumaxneo.hatenablog.com/entry/2017/06/10/160701
GTFとGFFフォーマット - macでインフォマティクス

Apr 23 2014
門田幸二(かどた こうじ)
http://www.iu.a.u-tokyo.ac.jp/~kadota/20140423_kadota.pdf

GFF3形式ファイルの例(シロイヌナズナ; TAIR10_GFF3_genes.gff)
遺伝子ごとに、どの染色体 のどの座標上に存在するの かなどの情報を含むタブ区 切りテキストファイル

----------
## link

http://bioinfo-dojo.net
バイオインフォ 道場 [bioinfo-Dojo] – 日々、バイオインフォマティクス修行。

https://twitter.com/hashtag/museomejp
https://sites.google.com/site/museumbioinfo/
Japan Museum Bioinformatics (Museomics) Working Group

https://twitter.com/ecSeq
ecSeq Bioinformatics

https://github.com/stephenturner/oneliners
Bioinformatics one-liners

https://www.sbj.or.jp/sbj/sbj_bioinformatics.html
生物工学会誌 –『バイオインフォマティクスを使い尽くす秘訣教えます!』 | 公益社団法人 日本生物工学会

http://data.dbcls.jp/~bono/lectures.html
Dr. Bono's website
Lectures
講義や講演

----------
## refseq

https://bi.biopapyrus.jp/db/refseq.html
RefSeq | 詳細な注釈づけられている冗長性のない核酸データベース

NC_	DNA	1 個体のデータから集められた完全なゲノム配列
NZ_	DNA	不完全なショットガン配列

http://d.hatena.ne.jp/yuifu/20110426/1303820667
Entrez Gene と RefSeq の関係 - micro*macro

NC_	Genomic	Complete genomic molecule, reference assembly
NZ_b	Genomic	Unfinished WGS

https://www.biostars.org/p/209159/
What is the difference between NZ_ and NC_ identifiers at NCBI?

NC - "Complete genomic molecule, usually reference assembly"
NZ - "Unfinished WGS"

https://www.ncbi.nlm.nih.gov/books/NBK21091/table/ch18.T.refseq_accession_numbers_and_mole/
NC_	Genomic	Complete genomic molecule, usually reference assembly
NZ_b	Genomic	Complete genomes and unfinished WGS data

----------


https://osdn.net/projects/jambo/docs/emboss_tutorial/...
EMBOSS を用いた配列解析への手引き

http://emboss.open-bio.org/html/use/ch04s03.html
4.3. Working with Alignments
Prev 	Chapter 4. EMBOSS User Tutorial

4.3.3. Exercise: Making a Dotplot

% dottup

http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf
2-1. 配列解析基礎
Basic Sequence Analysis
坊農 秀雅 

dottup


----------



https://github.com/haruosuz/r4bioinfo/tree/master/R_Avril_Coghlan#pairwise-sequence-alignment

- DDBJ [配列の記載に用いる略号](http://www.ddbj.nig.ac.jp/sub/code-j.html)
  - [塩基](https://www.ddbj.nig.ac.jp/ddbj/code.html#nucleotide)
  - [アミノ酸](https://www.ddbj.nig.ac.jp/ddbj/code.html#amino)
- 2017.06.03 [配列解析 | 塩基配列解析とアミノ酸配列解析](https://bi.biopapyrus.jp/seq/)
  - 配列
    - [置換行列 | スコアマトリックスの作り方](https://bi.biopapyrus.jp/seq/score-matrix.html)
  - [アラインメント | 核酸あるいはアミノ酸配列を複数並べ類縁度を可視化](https://bi.biopapyrus.jp/seq/alignment/)
    - [グローバルアライメントを求める Needleman–Wunsch アルゴリズム](https://bi.biopapyrus.jp/seq/alignment/needleman–wunsch.html)
    - [ローカルアラインメントを求める Smith-Waterman アルゴリズム](https://bi.biopapyrus.jp/seq/alignment/smith-waterman.html)
- [2-1. 配列解析基礎 Basic Sequence Analysis 坊農 秀雅](http://www.iu.a.u-tokyo.ac.jp/~kadota/bioinfo_ngs_sokushu_2014/20140905_2-1_bono.pdf)
- 24 July 2012 [Aritalab:Lecture/Bioinformatics/Alignment - Metabolomics.JP](http://metabolomics.jp/wiki/Aritalab:Lecture/Bioinformatics/Alignment)

- 2009.9.12 [バイオインフォマティクス基礎講座 配列解析 川端 猛](http://www.jst.go.jp/nbdc/bird/jinzai/literacy/streaming/h21_3_1.pdf)
- [バイオインフォマティクス-ゲノム配列から機能解析へ-第3章3.4節配列アラインメントにおけるスコア行列とギャップペナルティの使用方法](http://qiita.com/kino-tohoku/items/d4e0441e7ed6222106fa)

https://www.dna.bio.keio.ac.jp/lecture/bioinfo/bioinformatics-3.pdf
バイオインフォマティクス (第3回)
慶應義塾大学生命情報学科 榊原康文



----------
## jsbi-nintei

https://twitter.com/KEIOUP/status/972295148850696192
慶應義塾大学出版会 on Twitter: "学会初の公式教科書。『バイオインフォマティクス入門』（日本バイオインフォマティクス学会 編）厳選80項目と練習問題80題は、認定試験の全範囲をカバー！　https://t.co/t7T2A3IXgM"

https://www.jsbi.org/nintei/
Japanese Society for Bioinformatics - JSBi :: バイオインフォマティクス技術者認定試験

http://www.jsbi.org/nintei/books/
Japanese Society for Bioinformatics - JSBi :: 参考図書



https://www.jsbi.org/nintei/29/
３．平成２９年度問題と解説
問題と解答(PDF形式)


https://www.jsbi.org/nintei/28/
３．平成２８年度問題と解説
問題と解答(PDF形式) 
解説（PDF形式）

https://www.jsbi.org/nintei/27/ 
３．平成２７年度問題と解説
問題と解答(PDF形式) 
解説（PDF型式） 

https://www.jsbi.org/nintei/26/
３．平成２６年度試験問題＆解答
問題と解答 1.5MB
解説集371KB

https://www.jsbi.org/nintei/25/
３．平成２５年度試験問題＆解答
問題と解答 11MB
解説集 287KB

https://www.jsbi.org/nintei/24/
３．平成２４年度試験問題＆解答
問題と解答 2.5MB
解説集 275KB

https://www.jsbi.org/nintei/23/
３．平成２３年度試験問題＆解答
問題と解答 3.0MB
解説集 1.1MB

https://www.jsbi.org/nintei/22/
３．平成２２年度試験問題＆解答
問題と解答
解説集

https://www.jsbi.org/nintei/h21/
３．平成２１年度試験問題＆解答
問題と解答
解説集

https://www.jsbi.org/nintei/h20/
３．平成２０年度試験問題＆解答
問題と解答

https://www.jsbi.org/nintei/h19/
３．平成19年度試験問題＆解答
問題と解答

----------



