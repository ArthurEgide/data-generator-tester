# Create common bridge network
docker network create tcc_egide

# Debug loader API
docker build -t tcc_loader tcc_loader
docker run --network tcc_egide -it --rm tcc_loader

# Set up Faker-JS project
docker build -t generator_fakerjs generators/faker-js_faker/
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm -v ./generators/faker-js_faker/:/usr/generator generator_fakerjs run

# Set up Fakedata
docker build -t generator_fakedata generators/lucapette-fakedata/
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm -e PGPASSWORD=egide -v ./generators/lucapette-fakedata/:/usr/generator generator_fakedata run

# Set up JFairy
docker build -t generator_jfairy generators/devskiller_jfairy/
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm -v ./generators/devskiller_jfairy/:/usr/generator generator_jfairy run

# Special case generatedata

# Set up fzaninotto/Faker
docker build -t generator_fzaninotto generators/fzaninotto_faker
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_fzaninotto

# Set up evoSql Failed
docker build -t generator_evosql generators/evosql/
docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=evosqldemo -e MYSQL_DATABASE=evosqldemo -e MYSQL_USER=evosqldemo -e MYSQL_PASSWORD=evosqldemo mysql:8.2

