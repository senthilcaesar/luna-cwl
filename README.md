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

### Dockstore Yaml Command Line Validator Tool

The Dockstore Yaml Command Line Validator Tool is used to verify that a .dockstore.yml file is valid for use in Dockstore and that all referenced files are present.

The Dockstore Yaml Command Line Validator Tool is particularly helpful when you are trying to sync a GitHub repository with Dockstore by adding a `.dockstore.yml` to the root or `.github` directory of the repository. As you can verify that `.dockstore.yml` is valid before pushing, and it can help you to determine why your repository is not syncing with Dockstore.

```python
dockstore yaml validate --path luna-cwl/.github/
```
