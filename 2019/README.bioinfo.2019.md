Haruo Suzuki (haruo[at]g-language[dot]org)  
Last Update: 2019-11

----------
# bioinfo.2019

- [annotation](#annotation)

----------

# 2019-11-13
https://docs.google.com/document/d/1FnPIQQJSeoPTfrB3dQz0eKIgLTBfJhxthcmcOYxmZRs/mobilebasic
Annotathon2019
（生命科学データベースの利用価値向上のためのアノテーションマラソン）
日時：        2019年10月-11月のうち2日間を予定 → 11/12（火）〜11/13（水）
場所：        ライフサイエンス統合データベースセンター 柏ラボ 605号室
https://twitter.com/hashtag/annotathon


----------

https://wiki.cyverse.org/wiki/pages/viewpage.action?pageId=34834057


https://www.ncbi.nlm.nih.gov/genbank/genomesubmit/

![](https://www.ncbi.nlm.nih.gov/core/assets/genbank/images/WGSorNot.png)

non-WGS

Each chromosome is in a single sequence and there are no extra sequences
Each sequence in the genome must be assigned to a chromosome or plasmid or organelle
Plasmids and organelles can still be in multiple pieces.

WGS

One or more chromosomes are in multiple pieces and/or some sequences are not assembled into chromosomes
In both cases


----------
## plasmid annotation

http://www.plasmidbiologysociety.org/plasmid-annotation/
Plasmid Annotation | International Society for Plasmid Biology

https://www.ncbi.nlm.nih.gov/pubmed/28365184
Plasmid. 2017 May;91:61-67. doi: 10.1016/j.plasmid.2017.03.006. Epub 2017 Mar 30.
Annotation of plasmid genes.
Thomas CM1, Thomson NR2, Cerdeño-Tárraga AM2, Brown CJ3, Top EM3, Frost LS4.

7th Jul, 2015
https://www.researchgate.net/post/What_is_the_best_freely_available_software_to_annotate_a_plasmid_80_kB_of_a_yet_uncharacterized_E_coli
What is the best freely available software to annotate a plasmid (> 80 kB) of a yet uncharacterized E. coli?

2012/11/03
https://www.biostars.org/p/93970/
Plasmid Annotation

https://github.com/tseemann/prokka/blob/master/README.md#command-line-options
```
Organism details:
  --genus [X]       Genus name (default 'Genus')
  --species [X]     Species name (default 'species')
  --strain [X]      Strain name (default 'strain')
  --plasmid [X]     Plasmid name or identifier (default '')
```

----------
## plasmid BioSample

https://www.biostars.org/p/165094/
Is there any pairing info Genome <-> Plasmid in Genbank available?
The sequences of all replicons of a bacterial isolate are linked to a common entry in the taxonomy database, and to a common entry in the biosample database. 


### Sistrom
Sistrom, Mark (2018), Plasmids database, v2, DataONE Dash, Dataset, https://doi.org/10.15146/R33X2J

https://www.ncbi.nlm.nih.gov/pubmed/30637385
Microbiol Resour Announc. 2019 Jan 3;8(1). pii: e01325-18. doi: 10.1128/MRA.01325-18. eCollection 2019 Jan.
A Curated, Comprehensive Database of Plasmid Sequences.
Brooks L1, Kaze M2, Sistrom M2.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6318356/
Metadata from the BioProject, BioSample, and Assembly databases were also pulled for each plasmid sequence when present. 

### PLSDB
https://ccb-microbe.cs.uni-saarland.de/plsdb/

https://www.ncbi.nlm.nih.gov/pubmed/30380090
Nucleic Acids Res. 2018 Oct 31. doi: 10.1093/nar/gky1050. [Epub ahead of print]
PLSDB: a resource of complete bacterial plasmids.
Galata V1, Fehlmann T1, Backes C1, Keller A1.
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6323999/
- INTRODUCTION
The plasmid records were annotated using ARG-ANNOT (9), CARD (10), ResFinder (11) and VFDB (12), and characterized by PlasmidFinder and pMLST (13). 
- PLASMID COLLECTION
Data retrieval and processing pipeline
Data collection
For each BioSample ID linked to a plasmid record, the location name and coordinates, and the isolation source were extracted.

----------




