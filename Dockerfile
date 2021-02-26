FROM node:latest

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV HUBOT_NAME myhubot
ENV HUBOT_OWNER jt
ENV HUBOT_DESCRIPTION Hubot

RUN useradd hubot -m

USER hubot

WORKDIR /home/hubot

RUN npm install -g hubot coffee-script yo generator-hubot

RUN yo hubot --owner="${HUBOT_OWNER}" --name="${HUBOT_NAME}" --description="${HUBOT_DESCRIPTION}" --adapter=slack && npm install hubot-slack --save  
#setting the external-scripts on the line17↑

VOLUME ["/home/hubot/scripts"]

CMD bin/hubot -n $HUBOT_NAME --adapter slack