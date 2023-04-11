FROM node:18.15.0

RUN apt-get update && apt-get install -y less vim curl unzip sudo
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN sudo ./aws/install
RUN rm awscliv2.zip
USER node

WORKDIR /app
COPY . /app
CMD ["/bin/bash"]