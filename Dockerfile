FROM node:18.15.0

RUN apt-get update && apt-get install -y less vim curl unzip sudo \
  && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && sudo ./aws/install \
  && rm awscliv2.zip
USER node

WORKDIR /app
COPY . /app
CMD ["/bin/bash"]