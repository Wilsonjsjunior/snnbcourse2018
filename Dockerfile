# Pull miniconda3 image
FROM continuumio/miniconda3

# Create /genomika-snnb directory and set it as work directory
WORKDIR /curso-genomika-snnb

# Clone course repository
RUN git clone https://github.com/genomika/snnbcourse.git

# Install fastqc
RUN conda install conda-forge::openjdk && \
    conda install -c bioconda fastqc

# Install cutadapt
RUN conda install -c bioconda cutadapt

# Install bwa
RUN conda install -c bioconda bwa

# Install samtools
RUN conda install -c bioconda samtools

# Install Freebayes
RUN conda install -c bioconda freebayes

# Install vcftools
RUN conda install -c bioconda vcftools

# Install snpEff
RUN conda install -c bioconda snpeff

CMD ["/bin/bash"]
