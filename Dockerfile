FROM node:16-alpine

WORKDIR /survey-project/
COPY ./package.json /survey-project/
COPY ./yarn.locck /survey-project/
RUN yarn install

COPY . /survey-project/

CMD yarn start:dev