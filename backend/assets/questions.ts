export const questions = [
  {
    category: "Football",
    type: "multiple",
    difficulty: "medium",
    question: "Who won the FIFA World Cup in 2018?",
    correct_answer: "France",
    incorrect_answers: ["Croatia", "Brazil", "Germany", "France"],
  },
  {
    category: "Football",
    type: "multiple",
    difficulty: "easy",
    question: "Which country hosted the 2014 FIFA World Cup?",
    correct_answer: "Brazil",
    incorrect_answers: [ "Spain", "Germany",  "Russia", "Brazil"],
  },
  // Basketball
  {
    category: "Basketball",
    type: "multiple",
    difficulty: "medium",
    question: "Who is the all-time leading scorer in NBA history?",
    correct_answer: "Kareem Abdul-Jabbar",
    incorrect_answers: [
      "Michael Jordan",
      "LeBron James",
      "Kobe Bryant",
      "Kareem Abdul-Jabbar",
    ],
  },
  {
    category: "Basketball",
    type: "multiple",
    difficulty: "easy",
    question: "What is the height of an NBA basketball hoop?",
    correct_answer: "10 feet",
    incorrect_answers: ["9 feet", "11 feet", "12 feet", "10 feet"],
  },
  // Common Knowledge
  {
    category: "Common Knowledge",
    type: "multiple",
    difficulty: "easy",
    question: "How many continents are there in the world?",
    correct_answer: "7",
    incorrect_answers: ["6", "8", "7", "5"],
  },
  {
    category: "Common Knowledge",
    type: "multiple",
    difficulty: "medium",
    question: "What is the largest planet in our solar system?",
    correct_answer: "Jupiter",
    incorrect_answers: ["Venus", "Mars", "Jupiter", "Saturn"],
  },
  // Tech
  {
    category: "Tech",
    type: "multiple",
    difficulty: "medium",
    question: "Who co-founded Google alongside Larry Page?",
    correct_answer: "Sergey Brin",
    incorrect_answers: [
      "Sergey Brin",
      "Mark Zuckerberg",
      "Jeff Bezos",
      "Tim Cook",
    ],
  },
  {
    category: "Tech",
    type: "multiple",
    difficulty: "easy",
    question: "Which company is known for its iPhone products?",
    correct_answer: "Apple",
    incorrect_answers: ["Samsung", "Microsoft", "Apple", "Google"],
  },
  // Animals
  {
    category: "Animals",
    type: "multiple",
    difficulty: "medium",
    question: "What is the fastest land animal in the world?",
    correct_answer: "Cheetah",
    incorrect_answers: ["Lion", "Leopard", "Gazelle", "Cheetah"],
  },
  {
    category: "Animals",
    type: "multiple",
    difficulty: "easy",
    question: "What is the largest species of shark?",
    correct_answer: "Whale Shark",
    incorrect_answers: [
      "Great White Shark",
      "Whale Shark",
      "Hammerhead Shark",
      "Tiger Shark",
    ],
  },
  // Medical
  {
    category: "Medical",
    type: "multiple",
    difficulty: "medium",
    question: "What is the largest organ in the human body?",
    correct_answer: "Skin",
    incorrect_answers: ["Heart", "Brain", "Skin", "Liver"],
  },
  {
    category: "Medical",
    type: "multiple",
    difficulty: "easy",
    question: "What is the smallest bone in the human body?",
    correct_answer: "Stapes (in the ear)",
    incorrect_answers: ["Femur", "Tibia", "Humerus", "Stapes (in the ear)"],
  },
  // Drinks
  {
    category: "Drinks",
    type: "multiple",
    difficulty: "medium",
    question: "What is the main ingredient in a mojito cocktail?",
    correct_answer: "Rum",
    incorrect_answers: ["Tequila", "Vodka", "Gin", "Rum"],
  },
  {
    category: "Drinks",
    type: "multiple",
    difficulty: "easy",
    question: "Which alcoholic beverage is made from fermented grapes?",
    correct_answer: "Wine",
    incorrect_answers: ["Beer", "Wine", "Whiskey", "Vodka"],
  },
  // Countries
  {
    category: "Countries",
    type: "multiple",
    difficulty: "medium",
    question: "Which country is known as the Land of the Rising Sun?",
    correct_answer: "Japan",
    incorrect_answers: ["Korea", "Vietnam", "Japan", "China"],
  },
  {
    category: "Countries",
    type: "multiple",
    difficulty: "easy",
    question: "What is the capital of Australia?",
    correct_answer: "Canberra",
    incorrect_answers: [, "Melbourne", "Brisbane", "Canberra", "Sydney"],
  },
  // Business
  {
    category: "Business",
    type: "multiple",
    difficulty: "medium",
    question: "Who is the CEO of Tesla, Inc.?",
    correct_answer: "Elon Musk",
    incorrect_answers: [
      "Jeff Bezos",
      "Elon Musk",
      "Tim Cook",
      "Mark Zuckerberg",
    ],
  },
  {
    category: "Business",
    type: "multiple",
    difficulty: "easy",
    question: "Which company is known for its 'Think Different' slogan?",
    correct_answer: "Apple",
    incorrect_answers: ["Apple", "Microsoft", "Google", "Amazon"],
  },
  // Sport
  {
    category: "Sport",
    type: "multiple",
    difficulty: "medium",
    question:
      "In which sport does the term 'hat-trick' refer to scoring three goals in one game?",
    correct_answer: "Soccer (Football)",
    incorrect_answers: [
      "Baseball",
      "Soccer (Football)",
      "Basketball",
      "Tennis",
    ],
  },
  {
    category: "Sport",
    type: "multiple",
    difficulty: "easy",
    question: "What is the national sport of Japan?",
    correct_answer: "Sumo Wrestling",
    incorrect_answers: ["Karate", "Judo", "Sumo Wrestling", "Kendo"],
  },
  // Music
  {
    category: "Music",
    type: "multiple",
    difficulty: "medium",
    question: "Who is the lead guitarist of the rock band Queen?",
    correct_answer: "Brian May",
    incorrect_answers: [
      "Jimmy Page",
      "Brian May",
      "Jimi Hendrix",
      "Eddie Van Halen"
    ],
  },
  {
    category: "Music",
    type: "multiple",
    difficulty: "easy",
    question: "Which legendary musician is known as the 'King of Pop'?",
    correct_answer: "Michael Jackson",
    incorrect_answers: [
      "Michael Jackson",
      "Elvis Presley",
      "Madonna",
      "Prince"
    ],
  },
  // Flowers
  {
    category: "Flowers",
    type: "multiple",
    difficulty: "medium",
    question: "What flower is often associated with Valentine's Day?",
    correct_answer: "Rose",
    incorrect_answers: ["Tulip", "Daisy", "Rose", "Orchid"],
  },
  {
    category: "Flowers",
    type: "multiple",
    difficulty: "easy",
    question: "What is the national flower of India?",
    correct_answer: "Lotus",
    incorrect_answers: ["Rose", "Lotus", "Sunflower", "Tulip"],
  },
  // Companies
  {
    category: "Companies",
    type: "multiple",
    difficulty: "medium",
    question: "Which tech company's slogan is 'Don't be evil'?",
    correct_answer: "Google",
    incorrect_answers: ["Apple", "Microsoft", "Google", "Facebook"],
  },
  {
    category: "Companies",
    type: "multiple",
    difficulty: "easy",
    question:
      "Which car manufacturer produces the popular model known as the 'Civic'?",
    correct_answer: "Honda",
    incorrect_answers: ["Toyota", "Ford", "Honda", "Nissan"],
  },
];
