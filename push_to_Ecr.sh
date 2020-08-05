number=$(jq .version package.json)
version=$(echo $number | tr -d '"')
sudo docker build --no-cache --build-arg version_default=$version -t deno123 -f Dockerfile .
docker tag deno123:$version 985877142670.dkr.ecr.ap-southeast-1.amazonaws.com/deno123:$version
docker push 985877142670.dkr.ecr.ap-southeast-1.amazonaws.com/deno123:$version

