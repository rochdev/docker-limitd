FROM node:6-alpine
RUN apk --no-cache add g++ git make python
RUN yarn global add limitd && yarn cache clean
ENV DB=/var/limitd/database
VOLUME /var/limitd/database
EXPOSE 9231
CMD ["limitd"]
