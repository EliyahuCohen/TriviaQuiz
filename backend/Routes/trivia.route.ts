import verfiyToken from "../middleware/verfiy";
import {getTrivia, getUserScores, postTrivia} from "../Controllers/trivia.conrtoller";
import express from "express";

export const triviaRouter = express.Router();
triviaRouter.use(verfiyToken);
triviaRouter.get("/",getTrivia)
triviaRouter.post("/new",postTrivia)
triviaRouter.get("/score",getUserScores)
