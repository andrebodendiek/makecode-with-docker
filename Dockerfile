FROM node:latest

RUN apt update && apt -y upgrade 

WORKDIR /app

RUN git clone https://github.com/calliope-mini/pxt-calliope-static

RUN npm install -g serve

CMD ["serve", "pxt-calliope-static/release"]

EXPOSE 3000
