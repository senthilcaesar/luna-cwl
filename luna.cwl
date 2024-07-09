class: Workflow
id: "luna"
label: "luna tool"
cwlVersion: v1.2
doc: |
    A Software for the analysis of sleep signal data. See the [luna](https://zzz.bwh.harvard.edu/luna/) website for more information.

dct:creator:
  foaf:name: Shaun Purcell
  foaf:mbox: "mailto:luna.remnrem@gmail.com"
  
requirements:
  - class: DockerRequirement
    dockerPull: "remnrem/lunalite"


#baseCommand: luna # The baseCommand field will always appear in the final command line before the parameters.
baseCommand: ["sh", "-c"]

inputs:
  input_file:
    type: File
    inputBinding:
      position: 1
      prefix: ""

arguments:
  - valueFrom: "echo 'Running luna' && luna $(inputs.input_file.path) -s DESC > /dev/stdout 2>&1"
    shellQuote: false

outputs:
  output:
    type: stdout

stdout: output.txt

$namespaces:
    dct: https://purl.org/dc/terms/
    foaf: https://xmlns.com/foaf/0.1/
