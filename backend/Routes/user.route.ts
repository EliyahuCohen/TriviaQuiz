import express from "express";
import { getProfile, loginFunction, signupFunction } from "../Controllers/user.contoller";

export const userRouter = express.Router();

userRouter.post("/login", loginFunction);
userRouter.post("/signup", signupFunction);
userRouter.get("/profile", getProfile);

