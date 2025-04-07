#Membuild image dari Dockerfile untuk karsajobs fe dengan tag latest
docker build -t bhedil/karsajobs-ui:latest .

#Mengubah nama image sesuai dengan github packages dengan tag latest
docker tag item-app:v1 ghcr.io/bhedil/bhedil/karsajobs-ui:latest

#login ke github packages
echo $CR_PAT | docker login ghcr.io -u Bhedil --password-stdin

#push image ke github packages
docker push ghcr.io/bhedil/bhedil/karsajobs-ui:latest
