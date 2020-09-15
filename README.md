# diagrams-docker

Docker image for https://diagrams.mingrammer.com/

## Build image

```
docker build -t diagrams-docker .
```

## Create the alias

```bash
function diagrams () {
  if [[ -z "$1" ]]; then
    echo "Please provide file name as first argument"
  fi

  if [[ ! -f "$1" ]]; then
    echo "file $1 does not exist !"
  fi

  docker run -it \
    --volume $(PWD):/app/ \
    diagrams-docker python /app/$1
}
```
