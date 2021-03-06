FROM node:8.12

ENV APP_HOME /nuxt
WORKDIR $APP_HOME

# copy repo files into docker
COPY . $APP_HOME

ENV NODE_ENV development
# IMPORTANT!: specify host
ENV HOST 0.0.0.0
EXPOSE 3000

# this command is execed when build container
RUN yarn install

# this command is execed after building container
CMD ["yarn", "run", "dev"]