FROM node:8.12

RUN mkdir /echo
COPY main.go /echo
CMD ["go", "run", "/echo/main.go"]