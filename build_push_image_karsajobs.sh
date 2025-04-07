#Membuild image dari Dockerfile untuk karsajobs-be dengan tag latest
docker build -t bhedil/karsajobs:latest .

#Mengubah nama image sesuai dengan github packages dengan tag latest
docker tag item-app:v1 ghcr.io/bhedil/bhedil/karsajobs:latest

#login ke github packages
echo $CR_PAT | docker login ghcr.io -u Bhedil --password-stdin

#push image ke github packages
docker push ghcr.io/bhedil/bhedil/karsajobs:latest
