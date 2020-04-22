/* eslint-disable no-console */
console.log('app is loading ....');

const express = require("express");
const { join } = require("path");
const morgan = require("morgan");
const app = express();

// nathan 22/4/2020 const port = process.env.SERVER_PORT || 3000;
const port = 5000;

app.use(morgan("dev"));
app.use(express.static(join(__dirname, "build")));

app.listen(port, () => console.log(`Listening on port ${port}`));
