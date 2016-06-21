FROM morais/elm

# Install NodeJS
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install nodejs -y

# Copy Elm file
WORKDIR /app
COPY ./webpack.config.js /app/webpack.config.js
COPY ./package.json /app/package.json
COPY ./elm-package.json /app/elm-package.json

# Run ELM-PACKAGE install
RUN npm install
RUN elm-package install -y
COPY ./src /app/src

CMD node node_modules/webpack-dev-server/bin/webpack-dev-server --host 0.0.0.0 --port 8000