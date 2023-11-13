# Check that pack is installed
if ! command -v pack &> /dev/null
then
    echo "pack could not be found"
    exit 1
fi


# Check that arguements are set
if [ -z $1 ]; then
  echo "source builder image (argument 1) is not set"
  exit 1
fi

if [ -z $2 ]; then
  echo "retagged builder image (argument 2) is not set"
  exit 1
fi

docker pull $1

docker tag $1 $2

docker push $2

pack config experimental true

time pack build --verbose --timestamps tryit \
      --builder $2 \
      --buildpack paketo-buildpacks/ruby \
      --default-process run \
      --env BP_REQUIRES=audiowaveform \
      --extension ./audiowaveform-extension



