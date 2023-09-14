import mongoose, { Document, Schema } from 'mongoose';

// Define the Score interface for TypeScript
interface IScore extends Document {
  userId: mongoose.Types.ObjectId;
  userName: string;
  score: string; // E.g., "3/5"
}

// Create the Mongoose schema
export const ScoreSchema = new Schema<IScore>({
  userId: {
    type: Schema.Types.ObjectId, // Use Schema.Types.ObjectId here
    ref: 'User', // Reference to the user model (adjust as needed)
    required: true,
  },
  userName: {
    type: String,
    required: true,
  },
  score: {
    type: String,
    required: true,
  },
});

// Create and export the Score model
const ScoreModel = mongoose.model<IScore>('Score', ScoreSchema);
export default ScoreModel;
