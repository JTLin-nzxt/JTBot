FROM node:8

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV HUBOT_NAME jtbot
ENV HUBOT_OWNER jt
ENV HUBOT_DESCRIPTION Hubot

USER hubot

RUN yo hubot --owner="${HUBOT_OWNER}" --name="${HUBOT_NAME}" --description="${HUBOT_DESCRIPTION}" --defaults
#setting the external-scripts on the line17↑

VOLUME ["/home/hubot/scripts"]

CMD bin/hubot -n $HUBOT_NAME --adapter slack