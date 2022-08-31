# Search the SRA with mastiff

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/sourmash-bio/2022-search-sra-with-mastiff/stable?labpath=interpret-sra-live.ipynb)

>"That's a beautiful collection of public data you have here, it would
>be a shame if someone made it searchable." -- paraphrased

This repo provides examples that use
[sourmash](https://github.com/sourmash-bio/sourmash) to build
FracMinHash sketches and search ~485,000 public metagenomes in the
SRA with them in real time, using
[mastiff](https://github.com/sourmash-bio/mastiff).

## Quickstart - Jupyter Notebook

Click on the binder button below, and then select "Run... Run all cells", or hit the fast-forward button.

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/sourmash-bio/2022-search-sra-with-mastiff/stable?labpath=interpret-sra-live.ipynb)

## Quickstart - snakemake

Deposit sequences of interest in `sequences/`. Then run:

```
snakemake -j 1 --use-conda
```

and look in `mastiff_out/`.

<a href="https://sourmash.readthedocs.io"><img src="https://sourmash.readthedocs.io/en/latest/_static/logo.png" alt="sourmash logo" width="200" height="200"> </a>
