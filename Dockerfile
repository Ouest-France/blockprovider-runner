FROM node:slim

ARG BP_RUNNER_PATH=/blockprovider-runner

ADD . ${BP_RUNNER_PATH}/

ENV PATH="${PATH}:${BP_RUNNER_PATH}"
ENV PORT="8080"

RUN cd ${BP_RUNNER_PATH} \
 && npm install 

EXPOSE $PORT

CMD [ "blockprovider-runner" ]
