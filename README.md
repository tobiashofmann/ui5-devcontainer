# ui5-devcontainer
devcontainer with ui5 cli and other tools

The image is based on the typescript devcontainer from Microsoft: [typescript node](https://mcr.microsoft.com/en-us/product/devcontainers/typescript-node/about).

The image adds ui5 cli, yo and easy-ui5:

```sh
npm install -g @ui5/cli yo generator-easy-ui5
```

# Devcontainer

The devcontainer is the file .devcontainer/devcontainer.json. Copy this file to the root folder of your target project and open the folder from VS Code as a dev container. This will create a new container named UI5 development and add the following VS Code plugins: eslint and SAP UX Fiori Tools. 

# Image

## Build image

The image can be build using docker. To build the image with name ui5dev and tag it with 1.0.0, run:

```sh
docker build --tag ui5dev:1.0.0 .
```
In the output you'll see that the Microsoft image is used as base and the the npm packages are installed.

```sh
[+] Building 132.3s (6/6) FINISHED                                                                                                                                       
 => [internal] load build definition from Dockerfile
 => => transferring dockerfile: 231B
 => [internal] load .dockerignore
 => => transferring context: 2B
 => [internal] load metadata for mcr.microsoft.com/devcontainers/typescript-node:latest
 => [1/2] FROM mcr.microsoft.com/devcontainers/typescript-node:latest@sha256:cbecbc9ad8d3777d50b0ce050c878c99d1a06347d430599da0e451be3c85cc94
 => => resolve mcr.microsoft.com/devcontainers/typescript-node:latest@sha256:cbecbc9ad8d3777d50b0ce050c878c99d1a06347d430599da0e451be3c85cc94
 ...
 => [2/2] RUN npm install -g @ui5/cli yo generator-easy-ui5 && npm cache clean --force > /dev/null 2>&1
 => exporting to image
 => => exporting layers
 => => writing image sha256:990f7dd4239e0e2746f3b7102163bb986a3bfdff576cd3c8266c72388b8c1eda
 => => naming to docker.io/library/ui5dev:1.0.0 
```

## Usage

### Local registry

The image can now be used by a devcontainer that references it. For a local image registry, this is done by using ui5dev:1.0.0

```json
"image": "ui5dev:1.0.0",
```

### Docker Hub

The images is published at Docker Hub: https://hub.docker.com/r/tobiashofmann/ui5-devcontainer

```json
"image": "tobiashofmann/ui5-devcontainer:1.0.0",
```
