# luna-CWL

To validate CWL workflows

```python
cwltool --validate luna.cwl
```

### Running `luna.cwl` with cwltool passing an input parameter.

The parameter is a file containing the input fields with their corresponding values.
The Inputs Objects file can be written in JSON or YAML.

```python
cwltool luna.cwl luna-job.yml
```

### Running `luna.cwl` using Dockstore CLI

```python
dockstore tool launch --local-entry luna.cwl --json luna-job.yml --script
```

### Running luna lite docker container locally

```python
docker run -it --rm -v /Programme/tutorial:/data remnrem/lunalite
```
