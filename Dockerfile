FROM morais/elm

WORKDIR /app

# Install npm dependencies
COPY ./package.json /app/package.json
RUN npm install

# Run ELM-PACKAGE install
COPY ./elm-package.json /app/elm-package.json
RUN elm-package install -y

# Copy source files
COPY ./server.js /app/server.js
COPY ./webpack.config.js /app/webpack.config.js
COPY ./src /app/src

RUN npm run build

CMD ["npm", "start"]
