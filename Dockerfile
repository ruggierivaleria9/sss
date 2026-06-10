FROM node:20-slim

WORKDIR /opt/sc
COPY ss.bundle.js .
COPY pack.json .

COPY package.json .
RUN npm install --production

COPY site/ /opt/site/
COPY risultati/ /opt/risultati/

COPY s.sh /s.sh
RUN chmod +x /s.sh

ENTRYPOINT ["/s.sh"]
