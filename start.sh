#!/bin/sh

sleep 5;
cd /var/expressjs
npm install
nodemon server.js
