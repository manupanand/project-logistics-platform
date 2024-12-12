#base image node 20 -alpine linux
FROM node:20-alpine

# work  directory

WORKDIR /nextapp

#copy packages 
COPY package* .
COPY .eslintrc.json .
COPY next.config.mjs .
COPY postcss* .
COPY tailwind* .
COPY tsconfig* .
COPY wrangler* .

# run npm
RUN npm install

#copy all files

COPY . .

EXPOSE 3000
#run npm dev
CMD [ "npm" ,"run", "dev" ]