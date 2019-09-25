# yaml-linter
Tiny YAML linter Docker instance.

Available as: `hyperized/yaml-linter` at: https://cloud.docker.com/u/hyperized/repository/docker/hyperized/yaml-linter

Based on `ruby:alpine`.

Image size: 26 MB

# How to use

## Docker stand-alone
Checking all the files (recursively) in current directory
```sh
docker run -v $(pwd):/m --rm -it hyperized/yaml-linter yaml-lint -i -q /m
```


## .gitlab-ci.yml
How to check your code-base for YAML errors in Gitlab CI
```yaml
image: hyperized/yaml-linter:latest

stages:
  - yaml

yaml_lint:
  stage: yaml
  script:
    - yaml-lint -i -q .
```
