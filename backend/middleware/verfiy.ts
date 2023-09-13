import { Request, Response, NextFunction } from "express";
import jwt from "jsonwebtoken";

function verifyToken(req: Request, res: Response, next: NextFunction) {
  const token = req.headers.authorization;
  if (!token) {
    return res.status(401).json({ message: "Unauthorized" });
  }
  try {
    const decoded:any = jwt.verify(token, process.env.SECRET!);
    const userId = decoded.userId;
    req.body.USER_ID = userId;
    next();
  } catch (err) {
    console.log(err)
    return res.status(403).json({ message: "Token is not valid" });
  }
}

export default verifyToken;
