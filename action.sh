branch=main
git clone -b $branch https://github.com/CipherX1-ops/MegatronFileStream /root/CipherX1-ops
cp stream/.env /root/CipherX1-ops/.env
cd /root/CipherX1-ops
docker build . --rm --force-rm --compress --pull --file Dockerfile -t stream
docker run --privileged --env-file .env --rm -i stream
