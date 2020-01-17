rule environment:
    shell:
        """
        conda env export -f environment.yml
        sed -i '/^prefix/d' environment.yml
        """

rule requirements:
    input: 'requirements.in'
    output: 'requirements.txt'
    shell: 'pip-compile'