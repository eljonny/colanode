if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
  echo "Usage: $0 <container_name> <version> <env_file>"
  echo "version should be in the format x.y.z"
  echo "Example: $0 hsf-colanode 0.2.1 /path/to/env_file"
  exit 1
fi

docker container run -d -t \
  --name $1 --restart always -p 3000:3000 \
  --env-file $3 \
  jhyry9docks/hsf-colanode:v$2
