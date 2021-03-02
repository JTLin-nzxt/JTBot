FROM node:latest

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV HUBOT_NAME myhubot
ENV HUBOT_OWNER jt
ENV HUBOT_DESCRIPTION Hubot
ENV HUBOT_ADAPTER slack

RUN useradd hubot -m

RUN npm install -g hubot coffee-script yo generator-hubot

USER hubot

WORKDIR /home/hubot

RUN yo hubot --owner="${HUBOT_OWNER}" --name="${HUBOT_NAME}" --description="${HUBOT_DESCRIPTION}"  --adapter="${HUBOT_ADAPTER}" --defaults  && sed -i /heroku/d ./external-scripts.json && sed -i /redis-brain/d ./external-scripts.json && npm install hubot-scripts && npm install hubot-slack --save 
#setting the external-scripts on the line17↑

VOLUME ["/home/hubot/scripts"]

CMD ./bin/hubot -n $HUBOT_NAME --adapter slack