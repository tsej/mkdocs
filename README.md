# mkdocs
mkdocs

## test

```
docker run --rm -ti  -v $PWD:/workdir jass/mkdocs:0.2 mkdocs --help
```

## gitlab runner

```yaml
pages:
  stage: deploy
  image: jass/mkdocs:0.2
  script:
    - mkdocs build --site-dir public
  artifacts:
    paths:
      - public
  variables:
    GIT_STRATEGY: clone
    GIT_DEPTH: 0
  rules:
    - if: '$CI_COMMIT_BRANCH == $CI_DEFAULT_BRANCH'
```
