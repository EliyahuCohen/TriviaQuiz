import express from "express";
import dotenv from "dotenv";
import mongoose from "mongoose";
import cors from "cors";
//routers imports
import { userRouter } from "./Routes/user.route";

dotenv.config();

const app = express();


app.use(
  cors({
    origin: "*",
  })
);
app.use(express.json());
app.use("/", userRouter);
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
