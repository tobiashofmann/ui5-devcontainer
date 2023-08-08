FROM mcr.microsoft.com/devcontainers/typescript-node:latest

RUN npm install -g @ui5/cli yo generator-easy-ui5 && npm cache clean --force > /dev/null 2>&1
