FROM node:20-slim

WORKDIR /opt/s
COPY s.bundle.js .
COPY pak.json .

COPY package.json .
RUN npm install --production

COPY siti/ /opt/siti/
COPY founded/ /opt/founded/

COPY s.sh /s.sh
RUN chmod +x /s.sh

ENTRYPOINT ["/s.sh"]
