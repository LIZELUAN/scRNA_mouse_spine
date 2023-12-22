i=SM22-8W-1-2
cellranger count --id=$i \
                   --transcriptome=/home/lizeluan/flow/ref_cellranger/mouse/refdata-gex-mm10-2020-A \
                   --fastqs=/home/lizeluan/project/mouse_sc/10x_raw_data/CheahK_10X3RNA_SS-190903-01a/primary_seq \
                   --sample=$i \
                   --nosecondary \
                   --localcores=8 \
                   --localmem=64
