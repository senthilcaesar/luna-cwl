class: Workflow
id: "luna"
label: "luna tool"
cwlVersion: v1.2
doc: |
    A Software for the analysis of sleep signal data. See the [luna](https://zzz.bwh.harvard.edu/luna/) website for more information.

dct:creator:
  foaf:name: Shaun Purcell
  foaf:mbox: "mailto:luna.remnrem@gmail.com"
  
hints:
  DockerRequirement:
    dockerPull: "remnrem/lunalite"

baseCommand: ["sh", "-c"]

inputs:
  input_file:
    type: File
    inputBinding:
      position: 1

arguments:
  - valueFrom: "echo 'Running luna' && luna $(inputs.input_file.path) -s DESC > /dev/stdout 2>&1"
    shellQuote: false

outputs:
  output_file:
    type: stdout

stdout: output.txt


