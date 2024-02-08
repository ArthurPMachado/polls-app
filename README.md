# Polls app

## A Node app for users to vote on polls

The idea behind the project is for users to vote on polls and access the results in real-time

It's also a part of my personal portfolio, which I use to explore Redis, Websocket protocol and
Pub/Sub pattern

## Technologies used

* NodeJS
* Typescript
* Docker
* Prisma
* Postgres
* Redis
* Websocket
* Zod

## Getting Started
### Prerequisites

To run this project, it's necessary to prepare your environment, which means:

1. Install NodeJS 16+ - https://nodejs.org/en
2. Download and install Docker - https://www.docker.com/products/docker-desktop/

### Installing
**Cloning the Repository**
```
$ git clone git@github.com:ArthurPMachado/polls-app.git

$ cd polls-app
```
**Installing dependencies**

```
$ pnpm i
```

### Running Project
**Running migrations**
```
$ pnpm prisma migrate dev
```
**Running application**
```
$ pnpm run dev
```

⚠️ **DO NOT FORGET TO CREATE A .ENV FILE, OTHERWISE THE PROJECT WILL NOT WORK**

# Author

👤 **Arthur Machado**

- Github: [@Arthur Machado](https://github.com/ArthurPMachado)
- LinkedIn: [@Arthur Machado](https://linkedin.com/in/arthurpmachado)

## Show your support

Give a ⭐️ if this project helped you!
