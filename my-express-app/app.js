const express = require('express');
// import express from "express";
const path = require("path");
// import path from "path";
const app = express();

// Set static folder
app.use(express.static(path.join(__dirname, "public")));

// Routes
app.use("/", require("./routes/index"));
app.use("/about", require("./routes/about"));
app.get("/teste", (req, res) => {
  res.send("<h1>Olá, Mundo</h1>");
  console.log("Hello World");
});

const PORT = process.env.PORT || 8080;

app.listen(PORT, console.log(`Servidor rodando na porta ${PORT}`));
