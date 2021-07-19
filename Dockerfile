FROM        ubuntu:20.04
RUN         apt update -y && apt install wget gnupg2 -y
RUN         wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | apt-key add -
RUN         echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-4.4.list
RUN         apt update -y && apt install -y mongodb-org
COPY        catalogue.js    .
COPY        users.js    .
COPY        run.sh /
RUN         chmod +x /run.sh
CMD         ["/run.sh"]

