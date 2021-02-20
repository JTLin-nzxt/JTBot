FROM node:latest

# Environment variables
ENV DEBIAN_FRONTEND noninteractive
ENV HUBOT_NAME jtbot
ENV HUBOT_OWNER jt
ENV HUBOT_DESCRIPTION Hubot

# Install Hubot
RUN npm install -g yo generator-hubot

# Create and select Hubot User
RUN adduser --disabled-password --gecos "" hubot && \
  echo "hubot ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
USER hubot

# Init Hubot and environments
RUN yo hubot --owner="${HUBOT_OWNER}" --name="${HUBOT_NAME}" --description="${HUBOT_DESCRIPTION}" --defaults && sed -i /heroku/d ./external-scripts.json && sed -i /redis-brain/d ./external-scripts.json && npm install mysql && npm install rabbitmq
#setting the external-scripts on the line17↑

VOLUME ["/home/hubot/scripts"]

CMD bin/hubot -n $HUBOT_NAME --adapter slack