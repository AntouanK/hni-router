# hni-router

A simple `nginx` router and a docker-compose file, to help run the hni project.

## Usage
First build images of the other components.

Components used:
- hni-feed https://github.com/AntouanK/hni-feed , to listen to the HN API and feed data to RethinkDB
- hni-api https://github.com/AntouanK/hni-api , to expose a GraphQL interface, and a websocket, to consume the data from the database
- hni-ui https://github.com/AntouanK/hni-ui , the React-based front-end

Example to run in  a terminal:
```shell
# let's go to an empty directory
mkdir hni && cd hni

# clone all the repos of hni
git clone git@github.com:AntouanK/hni-router.git
git clone git@github.com:AntouanK/hni-ui.git
git clone git@github.com:AntouanK/hni-feed.git
git clone git@github.com:AntouanK/hni-api.git

# now let's build container images of those
docker build -t antouank/hni-feed ./hni-feed
docker build -t antouank/hni-api ./hni-api
docker build -t antouank/hni-ui ./hni-ui

# sweet. Let's use the docker-compose file to start all the containers
# NOTE : the prefix antouank/ is arbitrary, change it to whatever you want
cd hni-router && docker-compose up -d

# visit localhost:8080, you have a full-stack HN web app running.
# with Service worker, themeable colours, websockets and some occasional bugs. :)
open http://localhost:8080
```
