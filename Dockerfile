FROM morais/elm

# Copy Elm file
WORKDIR /app
COPY ./elm-package.json /app/elm-package.json

# Run ELM-PACKAGE install
RUN elm-package install -y
COPY ./src /app/src

CMD elm-reactor -a 172.17.0.3 -p 8000