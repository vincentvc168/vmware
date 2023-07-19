docker build --build-arg PIVNET={{Your PIVNET UAA Token}} -t tanzucli140

docker run -d tanzucli140

docker exec -it {{container_id}} /bin/bash
