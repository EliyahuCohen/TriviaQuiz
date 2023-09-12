import { Request, Response } from "express";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import User from "../Models/user.model";
const JWT_SECRET = process.env.SECRET!; // Replace with your actual JWT secret

export async function loginFunction(req: Request, res: Response) {
  const { email, password } = req.body;

 
  try {
    const newUser = await User.findOne({ email });

    if (!newUser) {
      return res.status(401).json({ message: "Invalid email" });
    }

    const isPasswordValid = await bcrypt.compare(password, newUser.password);

    if (!isPasswordValid) {
      return res.status(401).json({ message: "Invalid password" });
    }

    const token = jwt.sign({ userId: newUser._id }, process.env.SECRET!, {
      expiresIn: "1h",
    });
    
    console.log(newUser,  token);
    const user={
      id:newUser._id,
      username:newUser.username,
      email:newUser.email,
      gamesPlayed:newUser.gamesPlayed
    }
    res.status(200).json({token,user});
  } catch (error) {
    console.error("Login error:", error);
    res.status(500).json({ message: "Internal server error" });
  }
}

export async function signupFunction(req: Request, res: Response) {
  const { username, email, password } = req.body;

  try {
    const existingUser = await User.findOne({ email });

    if (existingUser) {
      return res.status(409).json({ message: "Email is already in use" });
    }

    const hashedPassword = await bcrypt.hash(password, 10); // Hash the password

    const newUser = new User({ username, email, password: hashedPassword });

    await newUser.save();

    res.status(201).json({ message: "User created" });
  } catch (error) {
    console.error("Signup error:", error);
    res.status(500).json({ message: "Internal server error" });
  }
}
