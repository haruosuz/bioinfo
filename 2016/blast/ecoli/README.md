----------

Haruo Suzuki <haruo@g-language.org>  
Last Update: 2015-09-28

----------

# BLASTP E.coli test project
Project started 2015-09-21.

## Project directories

	ecoli/
	  README.md: project documentation 
	  bin/: scripts
	    bp_search2table.pl: Turn Bio::SearchIO reports into a tabular format like blastall's "-m 9" output
	    parse_blast.pl: parse blast output
	    run_blast.sh: run blast program
	  data/: sequence data
	  results/: results of analyses

## Data
Escherichia_coli_K_12_substr__MG1655 data was downloaded on 2015-09-21 into `data/`, using:

	wget ftp://ftp.ncbi.nih.gov/genomes/Bacteria/Escherichia_coli_K_12_substr__MG1655_uid57779/NC_000913.faa

## Scripts

`bp_search2table.pl` was downloaded on 2015-09-21 into `bin/`, using:

	wget https://raw.githubusercontent.com/bioperl/bioperl-live/master/scripts/searchio/bp_search2table.pl

	chmod +x bp_search2table.pl

----------

## Codes

	myMac: ~/myGitHub/bioinfo/blast/
	mkdir -p ecoli/{bin,data,results}

### [Building a BLAST database](http://www.ncbi.nlm.nih.gov/books/NBK279688/)

	cd data
	DB=NC_000913.faa
	makeblastdb -in $DB -dbtype prot -hash_index -parse_seqids

### [Extracting data from BLAST databases with blastdbcmd](http://www.ncbi.nlm.nih.gov/books/NBK279689/)

	cd data
	NAME=NP_416114 # asr (acid shock protein precursor)
	DB=NC_000913.faa
	grep "$NAME" $DB
	blastdbcmd -db $DB -entry all -outfmt "%i %t" | grep "$NAME" | awk '{print $1}' | blastdbcmd -db $DB -entry_batch - > $NAME.faa

### BLASTP search of $QUERY against $DB with $Evalue

	cd results
	DIR=results-$(date +%F); mkdir $DIR; cd $DIR

#### Run blastp

	QUERY=../../data/NP_416114.faa # asr (acid shock protein precursor)
	QUERY=../../data/NC_000913.faa
	DB=../../data/NC_000913.faa
	NUM=1
	Evalue=1
	(time blastp -db $DB -query $QUERY -outfmt 0 \
	-num_alignments $NUM -num_descriptions $NUM \
	-evalue $Evalue -seg no > blast.out &) > stderr.log 2>&1

	# Monitor Redirected Standard Error
	tail -f stderr.log

	# Errors
	Error: Too many positional arguments (1), the offending value: save/-num_alignments

#### parse BLAST output: [Extract $result->query_name, $hit->name, $hit->description](http://www.bioperl.org/wiki/HOWTO:SearchIO#Parsing_with_Bio::SearchIO)

	../../bin/parse_blast.pl blast.out > blast.txt

#### make & rename directories
	mkdir e{10,1,1e-01,1e-05,1e-50}
	ls -d e1* | sed 's/e1\(.*\)/mv & e_1\1/' | sh

#### check BLAST hit numbers
	for DIR in `ls -d e*`; do echo -n $DIR" "; cut -f 1 $DIR/blast.txt | sort -u | wc -l; done

#### [Turn Bio::SearchIO reports into a tabular format like blastall's "-m 9" output](http://www.bioperl.org/wiki/Bioperl_scripts)

	../../bin/bp_search2table.pl -f blast -i blast.out -o blast.tab

	for DIR in `ls -d e_*`; do echo -n $DIR" "; ../../bin/bp_search2table.pl -f blast -i $DIR/blast.out -o $DIR/`basename -s .out $DIR/blast.out`.tab; done
 
### Looking at Differences Between Data

	diff e_1/blast.txt e_10/blast.txt

### Check data

	grep ">" NC_000913.faa | wc -l # 4140

	grep ">" NC_000913.faa | cut -d" " -f2- | cut -d"[" -f1 | sort | uniq -c | sort | (head -n 1; tail -n 6)

	 1 (3R)-hydroxymyristol acyl carrier protein dehydratase
	10 IS5 transposase and trans-activator 
	19 inner membrane protein 
	19 putative oxidoreductase 
	20 putative fimbrial-like adhesin protein 
	27 putative DNA-binding transcriptional regulator 
	39 putative transporter 

----------

## Results & Discussion
### BLASTP with varying E-value cutoff

We performed similarity searches of the 4140 protein-CoDing Sequences (CDSs) against the 4140 CDS databases using BLASTP with varying E-value cutoff of 1e-50, 1e-05, 1e-01, 1, and 10. 

	cut -f1 blast.tab | sort -u | wc -l # 4140
	cut -f2 blast.tab | sort -u | wc -l # 4102

Table 1. Numbers of BLAST hits at varying E-value cutoff.

| E-value | No.hits |
|:-----------|:-----------|
| 10 | 4140 |
| 1 | 4137 |
| 1e-01 | 4136 |
| 1e-05 | 4132 |
| 1e-50 | 3913 |

Of the 4140 E.coli CDSs, all the 4140 had matches with 4102 unique records in the database with E-value cutoff of 10, and all but three (i.e. 4137) CDSs had matches with 4099 unique records in the database with E-value cutoff of 1 (Table 1). The following 3 CDSs (YP_002791248, YP_002791255, and YP_002791256, encoding 'toxic membrane protein') were not detected.

http://rest.g-language.org/ecoli/ibsB  

          'translation' => 'MMKLLIIVVLLVISFPAY',
          'protein_id' => 'YP_002791248.1',

http://rest.g-language.org/ecoli/ibsC  

          'translation' => 'MMRLVIILIVLLLISFSAY',
          'protein_id' => 'YP_002791255.1',

http://rest.g-language.org/ecoli/ibsD  

          'translation' => 'MMKLVIILIVLLLVSFAAY',
          'protein_id' => 'YP_002791256.1',

### Inspecting Data with G-language System
- [rest.g-language tutorial (english)](http://www.g-language.org/wiki/restgenomeanalysisenglish)
- [rest.g-language tutorial (japanese)](http://www.g-language.org/wiki/restgenomeanalysisjapanese)

http://rest.g-language.org/ecoli  
http://rest.g-language.org/ecoli/*/product   
http://rest.g-language.org/ecoli/product=toxic.membrane.protein/product

----------

## References
- BLAST
  - [BLAST® Command Line Applications User Manual - NCBI Bookshelf](http://www.ncbi.nlm.nih.gov/books/NBK279690/)
  - [Basic local alignment search tool (blast) :: Misc :: eTutorials.org](http://etutorials.org/Misc/blast/)
  - [井上 潤：Blast+](http://www.geocities.jp/ancientfishtree/BLASTplus_JI.html)
  - [Local BLAST (togotv)(2011-02-25)](http://togotv.dbcls.jp/20110225.html)
  - ["Choosing BLAST options for better detection of orthologs as reciprocal best hits"](http://www.ncbi.nlm.nih.gov/pubmed/18042555) recommended soft filtering with Smith-Waterman alignment (-F mS -s T options)
- []()
- [HOWTO:SearchIO - BioPerl](http://www.bioperl.org/wiki/HOWTO:SearchIO)

----------

INFILE=README.md; OUTFILE=$INFILE.html; pandoc --from markdown --to html $INFILE > $OUTFILE

