docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_fakerjs
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm -e PGPASSWORD=egide generator_fakedata
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_fzaninotto
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_rubyfaker
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_jfairy
docker run --network tcc_egide --memory="1g" --cpus="2.0" -it --rm generator_joke2kfaker