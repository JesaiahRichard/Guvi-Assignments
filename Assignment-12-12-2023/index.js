const fs = require("fs");
const express = require("express");
// import express from "express";
// import fs from "fs;"


   const currentDate = new Date();
   const formattedDate = `${currentDate.getFullYear()}-${(currentDate.getMonth() + 1).toString().padStart(2, "0")}-${currentDate.getDate().toString().padStart(2, "0")}`;
   const currentTime = `${currentDate.getHours()}-${currentDate.getMinutes()}-${currentDate.getSeconds()}`;
   const time = currentDate.toISOString();
   const timeStamp = `timestamp:${time}`;

   fs.writeFile(`./apiurl/${formattedDate}-${currentTime}.txt`, timeStamp, (err) => {
       if (err) {
           console.log(err, "error");
           return;
       }
       console.log("file is created");
   });

//express code

const app = express();
const port = 5000;

app.get("/timestamp", (req, res) => {
   res.send(timeStamp);
});

app.listen(port, () => console.log("Server is running", port));

