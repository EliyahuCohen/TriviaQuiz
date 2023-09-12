import express from "express";
import { loginFunction, signupFunction } from "../Controllers/user.contoller";

export const router = express.Router();

router.post("/login", loginFunction);
router.post("/signup", signupFunction);
