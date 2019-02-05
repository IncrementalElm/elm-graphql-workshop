#!/bin/bash -x
# npx concurrently "nodemon --watch server ./server/books.js" "elm-live \"$1/Main.elm\" --proxyPrefix /api --proxyHost http://localhost:4000 --open -- --output elm.js"
# npx concurrently "nodemon --watch ./server/weather/src/index.js" "elm-live \"$1/Main.elm\" --proxyPrefix /api --proxyHost http://localhost:4000 --open -- --output elm.js"
# npx concurrently "cd ./server/weather && nodemon --watch ./src/index.js" "elm-live \"$1/Main.elm\" --proxyPrefix /api --proxyHost http://localhost:4000/ --open -- --output elm.js"
npx concurrently "cd ./server/weather && nodemon --watch ./src/index.js" "elm-live \"$1/Main.elm\" --proxyPrefix /api --proxyHost http://localhost:4000/ -- --output elm.js"
