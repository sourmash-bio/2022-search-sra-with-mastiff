# Search the SRA with mastiff

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/sourmash-bio/2022-search-sra-with-mastiff/stable)

This repo provides a workflow that uses
[sourmash](https://github.com/sourmash-bio/sourmash) to build
FracMinHash sketches and search ~485,000 public metagenomes in the
SRA with them using
[mastiff](https://github.com/sourmash-bio/mastiff).

## Quickstart

Deposit sequences of interest in `sequences/`. Then run:

```
snakemake -j 1 --use-conda
```

and look in `mastiff_out/`.
