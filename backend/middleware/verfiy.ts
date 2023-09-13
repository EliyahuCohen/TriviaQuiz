import { Request, Response, NextFunction } from 'express';
import jwt from 'jsonwebtoken';

// Your secret key for token verification (replace with your actual secret)
const secretKey = process.env.SECRET!;

// Middleware to verify user tokens
function verifyToken(req: Request, res: Response, next: NextFunction) {
  const token = (req.headers.authorization?.split(' ')[1] as string) || (req.query.token as string) || '';

  if (!token) {
    return res.status(401).json({ message: 'Unauthorized' });
  }
  try {
    // Verify the token using the secret key
    const decoded = jwt.verify(token, secretKey);

    // Attach the user ID from the token to the request object
    (req as any).USER_ID = decoded;

    next();
  } catch (err) {
    return res.status(403).json({ message: 'Token is not valid' });
  }
}

export default verifyToken;
