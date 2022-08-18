SEQUENCES, = glob_wildcards('sequences/{sequences}.fa.gz')

rule all:
    input:
        expand("sigs/{g}.sig.gz", g=SEQUENCES),
        expand("mastiff_out/{g}.x.sra.csv", g=SEQUENCES)


rule sketch:
    input:
        "sequences/{g}.fa.gz"
    output:
        "sigs/{g}.sig.gz"
    # conda
    shell: """
        sourmash sketch dna -p k=21,noabund,scaled=1000 {input} \
             --name-from-first -o {output}
    """
        
        
rule run_mastiff:
    input:
        "sigs/{g}.sig.gz"
    output:
        "mastiff_out/{g}.x.sra.csv"
    shell: """
        curl -H "Content-Type: application/json" --data-binary \
              @{input} https://mastiff.sourmash.bio/search -o {output}
    """

