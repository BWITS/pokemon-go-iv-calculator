FROM mhart/alpine-node
RUN apk update && apk add git
RUN git clone https://github.com/bwits/pokemon-go-iv-calculator.git
WORKDIR /pokemon-go-iv-calculator
RUN npm install
ENTRYPOINT ["node", "index.js"]
