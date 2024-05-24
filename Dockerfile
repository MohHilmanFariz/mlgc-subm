# FROM node:19

# WORKDIR /usr/src/app

# COPY . .

# RUN npm install
# RUN cp ./node_modules/@tensorflow/tfjs-node/lib/napi-v9/tensorflow.dll ./node_modules/@tensorflow/tfjs-node/lib/napi-v8

# ENV PORT=3000
# ENV MODEL_URL='https://storage.googleapis.com/mlgc-subm-model/submissions-model/model.json'

# EXPOSE 3000

# CMD ["npm", "start"]

FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3000

ENV MODEL_URL=https://storage.googleapis.com/mlgc-subm-model/submissions-model/model.json

CMD ["npm", "start"]

