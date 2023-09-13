import { Request, Response } from "express";
import { questions } from "../assets/questions";
import { shuffleArray } from "../assets/helpers";

export async function getTrivia(req: Request, res: Response) {
  try {
    if (!Array.isArray(questions) || questions.length === 0) {
      return res.status(404).json({ message: "No questions available" });
    }
    const shuffledQuestions = shuffleArray(questions);

    const randomQuestions = shuffledQuestions.slice(0, 10);

    res.json({ questions: randomQuestions });
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: "Internal Server Error" });
  }
}

