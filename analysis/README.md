# Analysis

These scripts were used to process the data and produce the graphs.

### 16S_scripts and 18S_scripts

MiSeq reads from 16S and 18S amplicons were processed separately. The two
`*scripts` folders contain simple bash scripts for upstream processing using
a combination of [Qiime 1.9.1](https://github.com/biocore/qiime) and
[VSEARCH](https://github.com/torognes/vsearch). These scripts were used to
cluster and annotate OTUs and build the two `.biom` tables in the [two data folders](https://github.com/pnnl/bernstein-2017-productivity-and-diversity-2/tree/master/data/).

The file `18S_joining.xlsx` shows the output of `vsearch --fastq_stats` when run
on the 18S reads, along with simple graphs. This was used to find ~~optimal~~
reasonable settings for processing these raw reads.

### figures

Elements of published figures are shown in the `figures` folder. These are part
of the output of the `.Rmd` script, which also could render `.docx` and `.html`
files.

Downstream analysis and graphs for this project are shown in the `.Rmd` file.
These make heavy use of [Phyloseq](https://github.com/joey711/phyloseq),
[vegan](https://cran.r-project.org/web/packages/vegan/index.html), and
[ggplot2](http://ggplot2.tidyverse.org/).

To increase reproducibility, the [Microsoft R Open](https://mran.microsoft.com/open/)
and the [checkpoint package](https://mran.microsoft.com/documents/rro/reproducibility/#timemachine)
are used.
