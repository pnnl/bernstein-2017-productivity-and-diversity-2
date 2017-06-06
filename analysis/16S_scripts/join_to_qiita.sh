#!/bin/bash


#===============================================#
# Take a folder of joined fastq files, and
# prep them for uploading to Qiita.
# 2016-05-25
#===============================================#

# Setting up folders
homedir=/people/bris469/data/rhizocon
input=$homedir/join
output=$homedir/to_qiita
rm -rf $output
mkdir $output

echo Running multiple_split_libraries_fastq.py 
multiple_split_libraries_fastq.py -i $input -o $output \
--read_indicator fastq -p $homedir/scripts/split_paramaters.txt

cp /people/bris469/qiita_prep_info_template.txt $output/qiita_prep_info.txt
cd $input
# Both this command and multiple_split_libraries_fastq.py split on the underscore
# so the sampleIDs inside the file will match the outputs
ls . | cut -d_ -f1 >> $output/qiita_prep_info.txt

