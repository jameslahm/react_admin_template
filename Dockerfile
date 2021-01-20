FROM node:lts-alpine3.10 as builder

WORKDIR /tmp/water-cycle-web

COPY ./ .

RUN yarn config set registry https://registry.npm.taobao.org &&yarn &&yarn build


FROM nginx

COPY nginx/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

COPY --from=0 /tmp/water-cycle-web/dist/ ./
