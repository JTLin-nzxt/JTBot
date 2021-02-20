FROM 3ch01c/hubot:latest

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV HUBOT_NAME jtbot
ENV HUBOT_OWNER jt
ENV HUBOT_DESCRIPTION hubot

RUN yo hubot --owner="${HUBOT_OWNER}" --name="${HUBOT_NAME}" --description="${HUBOT_DESCRIPTION}" --defaults

# Change user to hubot
ENV HOME /home/hubot
USER hubot
WORKDIR /home/hubot
COPY . /home/hubot

VOLUME ["/home/hubot/scripts"]

CMD bin/hubot -n $HUBOT_NAME --adapter slack