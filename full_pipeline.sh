# Create common bridge network
docker network create -d bridge etl_network

# Debug loader API
docker run --network etl_network -it --rm tcc_loader

# Set up Faker-JS project
docker build -t generator_fakerjs generators/faker-js_faker/
docker run --network etl_network -it --rm generator_fakerjs run