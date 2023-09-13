import { Request, Response } from "express";
import { questions as q } from "../assets/questions";
import { shuffleArray } from "../assets/helpers";

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
