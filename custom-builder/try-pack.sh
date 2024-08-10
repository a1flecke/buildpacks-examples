 docker build -t my-builder-builder .
 
 pack builder create my-builder-builder --config ./builder.toml

cd my-project
time pack build --verbose --timestamps tryit-nodejs \
      --builder my-builder-builder \
      --buildpack paketo-buildpacks/nodejs 
cd ../