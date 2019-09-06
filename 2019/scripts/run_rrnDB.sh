#!/bin/bash
set -euo pipefail

echo $PWD
uname -a

# retrieving data
curl -O https://rrndb.umms.med.umich.edu/static/download/rrnDB-5.5_16S_rRNA.fasta.zip
unzip rrnDB-5.5_16S_rRNA.fasta.zip

grep "Wolbachia" rrnDB-5.5_16S_rRNA.fasta

# seqkit grep -h
myfile=rrnDB-5.5_16S_rRNA.fasta
pattern="Wolbachia"
seqkit grep -nrp "${pattern}" "${myfile}" | perl -pe 's/>([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\|([^\|]+)\n/>$2\|$3\|$4\|$5\|$1\n/g,s/: /_/g' > "${myfile}"."${pattern}".fasta

# mafft --help
input=rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta
output="${input}".aln
mafft "${input}" > "${output}"

# raxmlHPC -h
sequenceFileName=rrnDB-5.5_16S_rRNA.fasta.Wolbachia.fasta.aln
outputFileName="${sequenceFileName}".newick
substitutionModel=GTRGAMMA
raxmlHPC-SSE3 -s "${sequenceFileName}" -n "${outputFileName}" -m "${substitutionModel}" -p 12345

# Done
echo "[$(date)] $0 has been successfully completed."

: <<'#__COMMENT_OUT__'

(time bash ./run_rrnDB.sh &) >& log.rrnDB.$(date +%F).txt

#__COMMENT_OUT__

