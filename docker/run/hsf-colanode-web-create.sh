if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <container_name> <version>"
  echo "version should be in the format x.y.z"
  echo "Example: $0 hsf-colanode-web 0.2.9"
  exit 1
fi

docker container run -d -t \
  --name $1 --restart always -p 4000:80 \
  jhyry9docks/hsf-colanode-web:v$2
