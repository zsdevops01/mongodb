
# MongoDB

Choose `mongodb` from the list.

## Install MongoDB Manual Steps.

Ref URL: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-red-hat/

1. Get MongoDB public Key  & Mongo repos

```
# wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
# echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
# apt update
```
2. Install Mongo & Start Service.

```
# apt install -y mongodb-org
```

3. Update Liste IP address from 127.0.0.1 to 0.0.0.0 in config file 

Config file: `/etc/mongod.conf`

then restart the service 

```
# systemctl restart mongod
```

## Every Database needs the schema to be loaded for the application to work.

Download the schema and load it.

```
# curl -s -L -o /tmp/mongodb.zip "https://github.com/zelar-soft-roboshop/mongodb/archive/main.zip"

# cd /tmp
# unzip mongodb.zip
# cd mongodb-main
# mongo < catalogue.js
# mongo < users.js 

```

 Symbol `<` will take the input from a file and give that input to the command.
