----------

Haruo Suzuki (haruo[at]g-language[dot]org)   
Last Update: 2015-10-29  

----------

# Microbial genome analysis using G-language System
G-language Systemのウェブサービス <http://rest.g-language.org/> を用いて、微生物（枯草菌、レンサ球菌、レジオネラ菌、大腸菌、プラスミド）のゲノム配列を解析する。

- Tutorials
 - [Japanese](http://www.g-language.org/wiki/restgenomeanalysisjapanese)
 - [English](http://www.g-language.org/wiki/restgenomeanalysisenglish)

----------

## Streptococcus
REST interface provides URL-based access to all functions of G-language Genome Analysis Environment. For example, Codon Adaptation Index (CAI) of Streptococcus pneumoniae TIGR4 genome is given by http://rest.g-language.org/NC_003028/cai/tag=product , and cross-references information related to Penicillin-binding protein 2x of Streptococcus pneumoniae can be collected by http://rest.g-language.org/annotation/P14677 .

----------

## Staphylococcus

- REST Service for G-language System

Base URL
http://rest.g-language.org/

For example, information for Staphylococcus aureus N315 genome (NCBI RefSeq accession: NC_002745) is shown by
http://rest.g-language.org/NC_002745

GC skew graph for this genome is given by
http://rest.g-language.org/NC_002745/gcskew

codon usage for all genes is given by
http://rest.g-language.org/NC_002745/codon_usage

information for tst gene is shown by
http://rest.g-language.org/NC_002745/tst

- G-Links collects related information to a given gene.

Base URL
http://link.g-language.org/

For example, information for tst gene (gene IDs: NP_375120, GI:15927587, GeneID:1124711) is shown by
http://link.g-language.org/NP_375120
http://link.g-language.org/GI:15927587
http://link.g-language.org/GeneID:1124711

----------

## Borrelia burgdorferi

Borrelia codon usage analysis

For Borrelia burgdorferi B31 plasmid lp56 (accession: NC_000956),
multivariate analysis of codon usage data (within-group correspondence analysis) is computed by 
http://rest.g-language.org/NC_000956/codon_mva

synonymous codon usage evenness (Ew) is computed by 
http://rest.g-language.org/NC_000956/Ew

synonymous codon usage diversity (Dmean) is computed by 
http://rest.g-language.org/NC_000956/Dmean

The book chapter (http://people.inf.ethz.ch/anmaria/papers/Chapter%2013.pdf) describes '13.5.5.1 Weighted sum of relative entropy (Ew)' and '13.5.8.1 Mean dissimilarity index (Dmean)’.

----------

## Codon usage

## PHX (Predicted Highly eXpressed)
PHX (Predicted Highly eXpressed)解析では、全遺伝子のコドン使用からの差 (BgC) が大きく、高発現遺伝子のコドン使用からの差 (BgH) が小さく、発現量予測値 (E_g = BgC/BgH) が1.05より大きい遺伝子を高発現と予測します (phx = 1) 。高発現遺伝子群は、翻訳伸長因子 (elongation factor) やリボソームタンパク質 (ribosomal protein) をコードする遺伝子群を含みます。また、コドン使用が全遺伝子と高発現遺伝子の何れとも異なる遺伝子を外来性 (Putative Alien; PA) と予測します (pa = 1) 。標準出力させるには http://rest.g-language.org/ecoli/phx/output=stdout と入力します。

http://rest.g-language.org/organism_list/

	NC_000907  Haemophilus influenzae Rd KW20, complete genome.
	NC_002505  Vibrio cholerae O1 biovar El Tor str. N16961 chromosome I, complete genome.
	NC_002506  Vibrio cholerae O1 biovar eltor str. N16961 chromosome II, complete sequence.

- http://rest.g-language.org/ecoli/phx (Escherichia coli)
- http://rest.g-language.org/bsub/phx (Bacillus subtilis)
- http://rest.g-language.org/NC_000907/phx (Haemophilus influenzae)
- http://rest.g-language.org/NC_002505/phx (Vibrio cholerae)

References
- [Karlin S et al. J Bacteriol. 2001 "Characterizations of highly expressed genes of four fast-growing bacteria."](http://www.ncbi.nlm.nih.gov/pubmed/11489855) | [FIG. 1.](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC95378/figure/F1/)

----------

## Bacillus
- [バシラス属](https://ja.wikipedia.org/wiki/バシラス属)  
- [枯草菌](https://ja.wikipedia.org/wiki/枯草菌)  
- [IAB板谷光泰教授](http://www.iab.keio.ac.jp/jp/content/view/320/140/)
 - [Research ─ 研究を通して ─:生きものの多様性を支えるゲノムの水平伝播](http://www.brh.co.jp/seimeishi/journal/056/research_21_2.html)
 - [巨大DNA操作法 : 枯草菌ゲノムベクターへのメガクローニング](https://www.jstage.jst.go.jp/article/kagakutoseibutsu1962/40/5/40_5_306/_pdf)

http://rest.g-language.org/organism_list/ (利用可能なゲノムの一覧) で枯草菌168株とシアノバクテリア Synechosistis PCC6803株を確認する

	NC_000964  Bacillus subtilis subsp. subtilis str. 168, complete genome.

	NC_000911  Synechocystis sp. PCC 6803 chromosome, complete genome.
	NC_005229  Synechocystis sp. PCC 6803 plasmid pSYSM, complete sequence.
	NC_005230  Synechocystis sp. PCC 6803 plasmid pSYSA, complete sequence.
	NC_005231  Synechocystis sp. PCC 6803 plasmid pSYSG, complete sequence.
	NC_005232  Synechocystis sp. PCC 6803 plasmid pSYSX, complete sequence.

	NC_007604  Synechococcus elongatus PCC 7942 chromosome, complete genome.
	NC_007595  Synechococcus elongatus PCC 7942 plasmid 1, complete sequence.

Synechosistis PCC6803株では、染色体(chromosome)と複数のプラスミド(plasmid)配列が利用できます。染色体の配列（アクセッション番号: NC_000911）を読み込むには、次のURLにアクセスします。
http://rest.g-language.org/NC_000911

	Accession Number: NC_000911
	
	Definition: Synechocystis sp. PCC 6803 chromosome, complete genome.
	
	  Length of Sequence :   3573470
	           A Content :    932363 (26.09%)
	           T Content :    935838 (26.19%)
	           G Content :    853808 (23.89%)
	           C Content :    851461 (23.83%)
	              Others :         0 (0.00%)
	          AT Content :    52.28%
	          GC Content :    47.72%
	
	      Number of genes :    3229 (CDSs: 3179, tRNAs: 43, rRNAs: 6) 

枯草菌168株のゲノム（アクセッション番号: NC_000964）を読み込むには
http://rest.g-language.org/NC_000964
または
http://rest.g-language.org/bsub
にアクセスします。

	Accession Number: NC_000964
	
	Definition: Bacillus subtilis subsp. subtilis str. 168, complete genome.
	
	  Length of Sequence :   4215606
	           A Content :   1188073 (28.18%)
	           T Content :   1193137 (28.30%)
	           G Content :    915112 (21.71%)
	           C Content :    919284 (21.81%)
              Others :         0 (0.00%)
	          AT Content :    56.49%
	          GC Content :    43.51%
	
	      Number of genes :    4422 (CDSs: 4176, tRNAs: 86, rRNAs: 30) 

GC Contentは、
枯草菌の染色体配列（43.51%）よりも
シアノバクテリアの染色体配列（47.72%）の方が高い。

Synechosistis PCC6803株の分類学的情報を得るには、例えば、 http://rest.g-language.org/NC_000911/TAXONOMY と入力します。以下の通り、全階級 (0, all), ドメイン (1, domain), 門 (2, phylum), 綱 (3, class), 目 (4, order), 科 (5, family), 属 (genus), 種 (species) が表示されます。

          '3' => 'Chroococcales',
          'genus' => 'Synechocystis',
          'species' => 'sp.',
          'all' => 'Bacteria;Cyanobacteria;Chroococcales;Synechocystis.',
          '2' => 'Cyanobacteria',
          '1' => 'Bacteria',
          '4' => 'Synechocystis.',
          'domain' => 'Bacteria',
          'order' => 'Synechocystis.',
          '0' => 'Bacteria;Cyanobacteria;Chroococcales;Synechocystis.',
          'phylum' => 'Cyanobacteria',
          'class' => 'Chroococcales',
          'family' => undef

組換え（Recombination）に関連する遺伝子を発見するために、"recombina"の記載を含む機能注釈情報 (product) を出力する http://rest.g-language.org/bsub/product=recombina/product

枯草菌（bsub）のrecA遺伝子の情報を取得するには http://rest.g-language.org/bsub/recA と入力します。

ssb遺伝子を出力する http://rest.g-language.org/bsub/gene=ssb/gene

----------

## Legionella
[レジオネラ](https://ja.wikipedia.org/wiki/レジオネラ)

#### ゲノム情報の取得
[利用可能なゲノム一覧](http://rest.g-language.org/organism_list)には以下の通り、NCBIアクセッション番号とゲノムの定義が記載されています。

	NC_002942  Legionella pneumophila subsp. pneumophila str. Philadelphia 1 chromosome, complete genome.

レジオネラPhiladelphia 1株 (accession: NC_002942) のゲノムの基本情報を取得するには、次のURLにアクセスします。
http://rest.g-language.org/NC_002942

以下の通り、ゲノムサイズ（bp）(Length of Sequence)、G+C含量（%）(GC Content)、遺伝子数(Number of genes)などの情報が出力されます。

	Accession Number: NC_002942

	Definition: Legionella pneumophila subsp. pneumophila str. Philadelphia 1 chromosome, complete genome.

	  Length of Sequence :   3397754
           A Content :   1048939 (30.87%)
           T Content :   1048510 (30.86%)
           G Content :    651691 (19.18%)
           C Content :    648613 (19.09%)
              Others :         1 (0.00%)
          AT Content :    61.73%
          GC Content :    38.27%

      Number of genes :    3003 (CDSs: 2943, tRNAs: 43, rRNAs: 9) 

ゲノム塩基配列を[FASTA](https://ja.wikipedia.org/wiki/FASTA)形式で出力するには以下のようにします。
- http://rest.g-language.org/NC_002942/seq （[NC_000913.fna](ftp://ftp.ncbi.nih.gov/genomes/Bacteria/Legionella_pneumophila_Philadelphia_1_uid57609/NC_002942.fna)に相当）

#### DNA複製系の解析
ゲノムの領域毎にGC skew (C-G)/(C+G) を計算するには、関数 gcskew を用います。次のように、accession番号 (NC_002942) の後に、関数名 (gcskew) を入力します。
http://rest.g-language.org/NC_002942/gcskew

[![](https://github.com/haruosuz/bioinfo/blob/master/glang/images/g-NC_002942-gcskew.png)]()

縦軸にGC skewの値を示し、横軸はゲノム上の位置（座標）を示しています。GC skewのシフトポイントはDNA複製の開始点と終止点に対応しています。

関数gcskewのヘルプを見るには、次のURLにアクセスします。
http://rest.g-language.org/help/gcskew

#### コドン使用の解析
コドン使用頻度を計算するには、関数 codon_usage を用います。
http://rest.g-language.org/NC_002942/codon_usage

[![](https://github.com/haruosuz/bioinfo/blob/master/glang/images/g_NC_002942_codon_usage.png)]()

#### パターン検索
オリゴマー TTACGCGTAA が存在する位置を調べるには、関数 oligomer_search を用い、次のURLにアクセスします。
http://rest.g-language.org/NC_002942/oligomer_search/TTACGCGTAA

ゲノムの座標 2669153 - 2669163 に存在する塩基配列を取得するには、次のURLにアクセスします。
http://rest.g-language.org/NC_002942/get_gbkseq/2669153/2669163

#### 遺伝子情報の取得
lpg1210遺伝子の情報を取得するには、次のように、accession番号 (NC_002942) の後に、遺伝子名 (lpg1210) を入力します。
http://rest.g-language.org/NC_002942/lpg1210

	$VAR1 = {
          'locus_tag' => 'lpg1210',
          'protein_id' => 'YP_095241.1',
          'partial' => '0 0',
          'transl_table' => '11',
          'end' => '1337443',
          'db_xref' => 'GI:52841442	GeneID:3078524',
          'feature' => 5194,
          'on' => 1,
          'cds' => 1187,
          'direction' => 'direct',
          'codon_start' => '1',
          'translation' => 'MPSLFGRKNIFAMKYLTTSRLLLRAWDREDTIPFYRMSQDPRVMKYFPELWSMDMVKDFIIRMNEQLSQKKFTLWAAEVKDNKQFIGFIGLNAPTWNAHFTPCVEIGWRLATEFWGQGYATEGAKAVLEYAFLDMHIPEIVSFTVPDNSRSRGVMERIGMIRDFAGDFLHPKLVSDHRLAKHVLYRIQNSLIKV',
          'product' => 'acetyltransferase',
          'type' => 'CDS',
          'start' => '1336859'
        };

遺伝子のアミノ酸配列は'translation'に格納されています。

以下のように遺伝子の機能注釈（アノテーション）情報は'product'に格納されています。

         'product' => 'acetyltransferase',

以下のように遺伝子の位置情報が得られます。遺伝子がゲノムの座標 1336859 - 1337443 に存在することを意味します。

         'start' => ‘1336859'
         'end' => '1337443',

以下のように遺伝子のIDが得られます。

         'protein_id' => 'YP_095241.1',
         'db_xref' => 'GI:52841442	GeneID:3078524’,

G-Links (http://link.g-language.org/) に遺伝子のIDを与えると、様々なデータベース（Gene Ontology [GO], PubMed, UniProtなど）から情報を取得してくれます。次のURLにアクセスします。
http://link.g-language.org/GI:52841442

遺伝子の配列を取得するには以下のように入力します。
- http://rest.g-language.org/NC_002942/lpg1210/translation (lpg1210遺伝子のアミノ酸配列を出力)
- http://rest.g-language.org/NC_002942/lpg1210/get_geneseq (lpg1210遺伝子の塩基配列を出力)
- http://rest.g-language.org/NC_002942/lpg1210/before_startcodon/200 (遺伝子の上流200塩基の配列を出力)

- 全遺伝子の情報を取得するにはAsterisk (*)を使用します。
 - http://rest.g-language.org/NC_002942/*/translation (全てのタンパク質のアミノ酸配列を出力)
 - http://rest.g-language.org/NC_002942/*/get_geneseq (全ての遺伝子の塩基配列を出力)
 - http://rest.g-language.org/NC_002942/*/product (全ての遺伝子の機能アノテーション product を出力)
 - http://rest.g-language.org/NC_002942/product=acetyltransferase/product ("acetyltransferase"の記載を含むproductを出力)

#### ターミナルで解析

	$wget http://rest.g-language.org/organism_list
	$grep Legionella organism_list 
	NC_002942  Legionella pneumophila subsp. pneumophila str. Philadelphia 1 chromosome, complete genome.
	NC_006365  Legionella pneumophila str. Paris plasmid pLPP, complete sequence.
	NC_006366  Legionella pneumophila str. Lens plasmid pLPL, complete sequence.
	NC_006368  Legionella pneumophila str. Paris, complete genome.
	NC_006369  Legionella pneumophila str. Lens, complete genome.
	NC_009494  Legionella pneumophila str. Corby chromosome, complete genome.
	NC_013861  Legionella longbeachae NSW150 chromosome, complete genome.
	NC_014125  Legionella pneumophila 2300/99 Alcoy chromosome, complete genome.
	NC_014544  Legionella longbeachae NSW150 plasmid pLLO, complete sequence.

----------

## Plasmid
[プラスミド](https://ja.wikipedia.org/wiki/プラスミド)

広宿主域IncPプラスミドpB10の配列を読み込む
http://rest.g-language.org/NC_004840

	Accession Number: NC_004840
	
	Definition: Uncultured bacterium plasmid pB10, complete sequence.
	
	  Length of Sequence :     64508
	           A Content :     11081 (17.18%)
	           T Content :     12032 (18.65%)
	           G Content :     20509 (31.79%)
	           C Content :     20886 (32.38%)
	              Others :         0 (0.00%)
	          AT Content :    35.83%
	          GC Content :    64.17%
	
	      Number of genes :    68 (CDSs: 65, tRNAs: 0, rRNAs: 0) 

プラスミド配列の領域（1,000bpのウインドウ）毎にG+C含量を計算する
http://rest.g-language.org/NC_004840/gcwin/window=1000

プラスミドpB10にはG+C含量の低い領域が２箇所あります。
この低G+Cの２領域にコードされているのは薬剤耐性遺伝子です。
以下、CDS塩基組成の解析結果より該当する領域を抜粋します。

http://rest.g-language.org/NC_004840/bui/position=3/tag=gene

	acgt3	ryr3	gcc3	Hgc3	gcs3	ats3	gene
	114	0.7538	0.4912	0.9998	+0.0714	-0.2069	qacEdelta1
	79	0.5192	0.6582	0.9265	+0.1154	-0.7037	orfE-like
	274	0.9161	0.5073	0.9998	-0.0504	-0.1407	oxa-2

	266	0.8095	0.5489	0.9931	+0.0000	-0.2333	strA
	277	0.7756	0.5776	0.9825	+0.0250	-0.2650	strB

http://rest.g-language.org/NC_004840/bui/position=3/tag=product

	114	0.7538	0.4912	0.9998	+0.0714	-0.2069	small exporter protein
	79	0.5192	0.6582	0.9265	+0.1154	-0.7037	hypothetical protein
	274	0.9161	0.5073	0.9998	-0.0504	-0.1407	beta-lactamase precursor

	266	0.8095	0.5489	0.9931	+0.0000	-0.2333	aminoglycoside-3''-phosphotransferase
	277	0.7756	0.5776	0.9825	+0.0250	-0.2650	aminoglycoside-6-phosphotransferase

----------

## Escherichia coli
[大腸菌](https://ja.wikipedia.org/wiki/大腸菌)

論文 "Evolutionary potential, cross-stress behavior and the genetic basis of acquired stress resistance in Escherichia coli." (http://www.ncbi.nlm.nih.gov/pubmed/23385483) の TABLE 1 (http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3588905/table/t1/) に示された遺伝子を用いて、G-language SystemのRESTサービス (http://www.g-language.org/wiki/restgenomeanalysisjapanese) の実習を行います。

利用可能なゲノム一覧 (http://rest.g-language.org/organism_list/) には、NCBIのACCESSION番号と生物のDEFINITIONが記載されています。
NC_000913  Escherichia coli str. K-12 substr. MG1655 chromosome, complete genome.

例えば、大腸菌K-12 (NC_000913) のゲノムの基本情報を取得するには http://rest.g-language.org/NC_000913 と入力します。ゲノムサイズ（Length of Sequence）やG+C含量（GC Content）などの情報が出力されます。

rpoB遺伝子の情報を取得するには以下のように入力します。
http://rest.g-language.org/NC_000913/rpoB

rpoB遺伝子のアミノ酸配列は'translation'に格納されています。

以下のようにrpoB遺伝子の機能注釈（アノテーション）情報が得られます。
        'product' => 'RNA polymerase, beta subunit',

以下のようにrpoB遺伝子の位置情報が得られます。rpoB遺伝子がゲノムの座標 4179268 (bp) から 4183296 (bp) に存在することを意味します。
        'start' => '4179268',
        'end' => '4183296',

以下のようにrpoB遺伝子のIDが得られます。
        'db_xref' => 'GI:16131817	ASAP:ABE-0013041	UniProtKB/Swiss-Prot:P0A8V2	ECOCYC:EG10894	EcoGene:EG10894	GeneID:948488',


G-Links (http://link.g-language.org/) に遺伝子のIDを与えると、様々なデータベース（Gene Ontology [GO], PubMed, UniProtなど）から情報を取得してくれます。以下のように入力します。
http://link.g-language.org/GI:16131817

rpoB遺伝子の配列を取得するには以下のように入力します。
http://rest.g-language.org/NC_000913/rpoB/translation (rpoBのアミノ酸配列を出力)
http://rest.g-language.org/NC_000913/rpoB/get_geneseq (rpoBの塩基配列を出力)
http://rest.g-language.org/NC_000913/rpoB/before_startcodon/200 (rpoBの上流200塩基の配列を出力)

同様の操作により、TABLE 1 (http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3588905/table/t1/) に示された他の遺伝子（pykF, acrA, fepA, entD, marC など）の情報を取得してみてください。

全遺伝子の情報を取得するにはAsterisk (*)を使用します。
http://rest.g-language.org/NC_000913/*/translation (全遺伝子のアミノ酸配列を出力)
http://rest.g-language.org/NC_000913/*/get_geneseq (全遺伝子の塩基配列を出力)
http://rest.g-language.org/NC_000913/*/product (全遺伝子のproductを出力)
http://rest.g-language.org/NC_000913/product=replication/product ("replication"の記載を含むproductを出力)

コドン適合度指数 codon adaptation index (CAI) を計算するには以下のように入力します。
http://rest.g-language.org/NC_000913/cai/tag=gene
以下のようにCAI値が出力されます。CAI値が1に近いほど遺伝子の発現量が高いと予測されます。
0.7359	rpoB
0.8827	eno
0.8945	lpp

----------

# 慶應IAB開発のWebサービス

http://www.iab.keio.ac.jp/jp/content/view/474/139/ バイオインフォマティクスにおけるWebサービスアクセスのためのEMBOSSパッケージ
既存の解析環境にWebサービスを安定的に連携させる新規ツール「KBWS」の開発

http://www.iab.keio.ac.jp/jp/content/view/437/139/ KEGG Atlasをベースとした多機能ウェブブラウザ「Pathway Projector」の開発
自由に実験データを可視化することができる操作性にすぐれたツールの実現
PathwayProjector (http://www.g-language.org/PathwayProjector/)

http://www.iab.keio.ac.jp/jp/content/view/413/139/ ゲノム解析統合環境 G-language Systemのウェブサービス
World Wide Webの仕組みを使うことで，ブラウザさえあれば誰でも簡単にゲノム解析が可能に

http://www.iab.keio.ac.jp/jp/content/view/263/139/ MEGU: 統合パスウェイマップへの複合データ可視化システムの開発
ゲノム、メタボローム、プロテオームなどの大量データ解析の為のパスウェイ可視化webサービスを公開
MEGU:Pathway Visualization System (http://megu.iab.keio.ac.jp)

Microarray Visualization System (http://www.g-language.org/data/marray/)

例えば、Microarray Visualization System (http://www.g-language.org/data/marray/)のページで
<Pathway Visualization Web Application (Click here to proceed)>をクリックすると、
このページ（http://www.g-language.org/data/marray/software/map2swf.cgi）に移動します。ここで
[Input sample data]ボタンを押して、サンプルデータを表示させてから、下の方の
[Visualize with the above data!]ボタンを押すと、以下の結果が表示されるはずです。
http://www.g-language.org/data/marray/software/eco00010.swf

ご自分の遺伝子発現データでもお試しください。

----------

