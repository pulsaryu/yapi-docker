FROM node:12

RUN mkdir /app \
  && cd /app \
  && wget http://registry.npm.taobao.org/yapi-vendor/download/yapi-vendor-1.9.2.tgz \
  && tar xzf yapi-vendor-1.9.2.tgz \
  && cd /app/package \
  && npm install --production --registry https://registry.npm.taobao.org

#RUN npm install -g yapi-cli --registry https://registry.npm.taobao.org

WORKDIR /app/package

ENTRYPOINT ["npm", "start"]
