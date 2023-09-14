import { Request, Response } from "express";
import { questions as q } from "../assets/questions";
import { shuffleArray } from "../assets/helpers";
import User from "../Models/user.model";
import ScoreModel from "../Models/score.model";

export async function getTrivia(req: Request, res: Response) {
  try {
    if (!Array.isArray(q) || q.length === 0) {
      return res.status(404).json({ message: "No questions available" });
    }
    const shuffledQuestions = shuffleArray(q);

    const questions = shuffledQuestions.slice(0, 5);

    res.status(200).json(questions);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
}
export async function postTrivia(req: Request, res: Response) {
  const { USER_ID, score } = req.body;
  let user = await User.findById(USER_ID);
  const Score = await ScoreModel.create({
    userId: USER_ID,
    score: score,
    userName: user?.username,
  });
  user!.gamesPlayed++;
  await user?.save();
  res.status(200).json({ message: "Score Saved " + user?.username });
}
export async function getUserScores(req: Request, res: Response) {
  //here we are going to grab the user id and than give him from the Trivia Collection all of the info that is realted to him
  const { USER_ID } = req.body;
  const scores = await ScoreModel.find({
    userId: USER_ID,
  });
  return res.status(200).json(scores);
}
