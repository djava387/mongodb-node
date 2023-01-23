echo ---------Install MongoDB Packages------------
sudo apt install -y software-properties-common gnupg apt-transport-https ca-certificates

echo ---------Import public key------------
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

echo ---------Adding MongoDB APT repository to the /etc/apt/sources.list.d------------
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

echo ---------Update------------
sudo apt update

echo ---------Install-----------
sudo apt install -y mongodb-org

echo ---------Check version----------
mongod --version
mongosh

echo ---------Start-------------
sudo systemctl start mongod
sudo systemctl status mongod