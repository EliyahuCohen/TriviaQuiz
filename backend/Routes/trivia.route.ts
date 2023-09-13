import verfiyToken from "../middleware/verfiy";
import {getTrivia} from "../Controllers/trivia.conrtoller";
import express from "express";

export const triviaRouter = express.Router();
triviaRouter.use(verfiyToken);
triviaRouter.get("/",getTrivia)