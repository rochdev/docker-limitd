FROM node:6-alpine
RUN apk --no-cache add g++ git make python
RUN yarn global add limitd && yarn cache clean
VOLUME /var/limitd/database
CMD ["limitd"]
