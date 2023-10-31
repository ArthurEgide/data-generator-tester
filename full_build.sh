# Create common bridge network
docker network create tcc_egide

# Debug loader API
# docker build -t tcc_loader tcc_loader
# docker run --network tcc_egide -it --rm tcc_loader

# Set up Faker-JS project
docker build -t generator_fakerjs generators/faker-js_faker/

# Set up Fakedata
docker build -t generator_fakedata generators/lucapette-fakedata/

# Set up JFairy
docker build -t generator_jfairy generators/devskiller_jfairy/

# Special case generatedata

# Set up fzaninotto/Faker
docker build -t generator_fzaninotto generators/fzaninotto_faker

# Set up evoSql Failed
# docker build -t generator_evosql generators/evosql/
# docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=evosqldemo -e MYSQL_DATABASE=evosqldemo -e MYSQL_USER=evosqldemo -e MYSQL_PASSWORD=evosqldemo mysql:8.2

# Set up faker-ruby/faker
docker build -t generator_rubyfaker generators/fakerruby_faker/

# Set up joke2k/faker
docker build -t generator_joke2kfaker generators/joke2k_faker
