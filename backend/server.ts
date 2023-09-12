import express from "express";
import dotenv from "dotenv";
import mongoose from "mongoose";

dotenv.config();

const app = express();

app.use(express.json());

mongoose
  .connect(process.env.MONGO_URI!)
  .then(() => {
    console.log("Connected to MongoDB");
    app.listen(process.env.PORT, () => {
      console.log(`Server is running on port ${process.env.PORT}`);
    });
  })
  .catch((error) => {
    console.error("MongoDB connection error:", error);
  });
