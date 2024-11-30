class DummyDb {
  static List<Map> sportslist = [
    {
      "questions": "Which country won the FIFA World Cup in 2018?",
      "options": ["Brazil", "Germany", "France", "Argentina"],
      "answerIndex": 2
    },
    {
      "questions": "How many players are there in a basketball team?",
      "options": ["5", "7", "11", "9"],
      "answerIndex": 0
    },
    {
      "questions":
          "Who holds the record for the most Grand Slam titles in tennis?",
      "options": [
        "Roger Federer",
        "Rafael Nadal",
        "Novak Djokovic",
        "Pete Sampras"
      ],
      "answerIndex": 2
    },
    {
      "questions": "Which country has won the most Olympic medals?",
      "options": ["China", "Russia", "USA", "Germany"],
      "answerIndex": 2
    },
    {
      "questions": "In which sport is the term 'home run' used?",
      "options": ["Football", "Basketball", "Baseball", "Cricket"],
      "answerIndex": 2
    },
    {
      "questions": "Which sport is associated with the Wimbledon Championship?",
      "options": ["Cricket", "Tennis", "Golf", "Basketball"],
      "answerIndex": 1
    },
    {
      "questions": "How long is a marathon?",
      "options": ["21 km", "42 km", "10 km", "50 km"],
      "answerIndex": 1
    },
    {
      "questions": "Which sport uses the term 'checkmate'?",
      "options": ["Boxing", "Chess", "Wrestling", "Fencing"],
      "answerIndex": 1
    },
    {
      "questions":
          "What is the highest score possible in a single frame of bowling?",
      "options": ["100", "200", "300", "400"],
      "answerIndex": 2
    },
    {
      "questions": "Which country is known for the sport of sumo wrestling?",
      "options": ["Japan", "China", "Korea", "India"],
      "answerIndex": 0
    }
  ];

  static List<Map> selectionlist = [
    {
      "image":
          "https://images.pexels.com/photos/47730/the-ball-stadion-football-the-pitch-47730.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'Sports', // Capitalized the first letter
      "number of question": "10 questions"
    },
    {
      "image":
          "https://images.pexels.com/photos/7723354/pexels-photo-7723354.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'Science', // Capitalized the first letter
      "number of question": "15 questions"
    },
    {
      "image":
          "https://images.pexels.com/photos/3354763/pexels-photo-3354763.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'History', // Capitalized the first letter
      "number of question": "12 questions"
    },
    {
      "image":
          "https://images.pexels.com/photos/2660262/pexels-photo-2660262.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'Geography', // Capitalized the first letter
      "number of question": "8 questions"
    },
    {
      "image":
          "https://images.pexels.com/photos/16825355/pexels-photo-16825355/free-photo-of-calculator-on-brown-background.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'Math', // Capitalized the first letter
      "number of question": "20 questions"
    },
    {
      "image":
          "https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "category": 'Cars', // Capitalized the first letter
      "number of question": "18 questions"
    }
  ];

  static List<Map> carsList = [
    {
      "questions":
          "What is the term for the speed at which a car engine operates?",
      "options": ["Horsepower", "RPM", "Torque", "Miles per hour"],
      "answerIndex": 1,
    },
    {
      "questions": "Which company produces the Mustang?",
      "options": ["Chevrolet", "Dodge", "Ford", "Toyota"],
      "answerIndex": 2,
    },
    {
      "questions":
          "What type of engine uses both an electric motor and a gasoline engine?",
      "options": [
        "Diesel Engine",
        "Hybrid Engine",
        "V8 Engine",
        "Turbocharged Engine"
      ],
      "answerIndex": 1,
    },
    {
      "questions": "Which car brand has a logo featuring a bull?",
      "options": ["Ferrari", "Lamborghini", "Porsche", "Maserati"],
      "answerIndex": 1,
    },
    {
      "questions": "What is the top speed of most Formula 1 cars?",
      "options": ["200 km/h", "250 km/h", "300 km/h", "350 km/h"],
      "answerIndex": 3,
    },
    {
      "questions": "Which car company manufactures the Corolla?",
      "options": ["Nissan", "Honda", "Toyota", "Hyundai"],
      "answerIndex": 2,
    },
    {
      "questions": "What does ABS stand for in car safety systems?",
      "options": [
        "Automatic Braking System",
        "Anti-Lock Braking System",
        "Advanced Brake System",
        "Auto Brake System"
      ],
      "answerIndex": 1,
    },
    {
      "questions": "What is the primary function of a turbocharger in a car?",
      "options": [
        "Increase fuel efficiency",
        "Reduce emissions",
        "Increase engine power",
        "Lower engine temperature"
      ],
      "answerIndex": 2,
    },
  ];

  static List scienceList = [
    {
      "questions": "What is the chemical formula for water?",
      "options": ["H2O", "O2", "CO2", "H2"],
      "answerIndex": 0,
    },
    {
      "questions": "Which planet is closest to the sun?",
      "options": ["Venus", "Mars", "Mercury", "Earth"],
      "answerIndex": 2,
    },
    {
      "questions": "What is the force that pulls objects toward the Earth?",
      "options": ["Friction", "Magnetism", "Gravity", "Inertia"],
      "answerIndex": 2,
    },
    {
      "questions": "What gas do humans need to breathe to survive?",
      "options": ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"],
      "answerIndex": 0,
    },
    {
      "questions": "What is the main organ of the human circulatory system?",
      "options": ["Brain", "Lungs", "Liver", "Heart"],
      "answerIndex": 3,
    },
    {
      "questions": "What natural phenomenon is measured by the Richter scale?",
      "options": ["Tides", "Volcanic Eruptions", "Earthquakes", "Hurricanes"],
      "answerIndex": 2,
    },
  ];

  static List geographyList = [
    {
      "questions": "What is the smallest country in the world?",
      "options": ["Monaco", "Vatican City", "Malta", "San Marino"],
      "answerIndex": 1,
    },
    {
      "questions": "Which continent is the largest by area?",
      "options": ["Asia", "Africa", "North America", "Europe"],
      "answerIndex": 0,
    },
    {
      "questions": "What is the tallest mountain in the world?",
      "options": ["K2", "Kilimanjaro", "Everest", "Denali"],
      "answerIndex": 2,
    },
    {
      "questions": "What is the capital of Australia?",
      "options": ["Sydney", "Melbourne", "Canberra", "Perth"],
      "answerIndex": 2,
    },
    {
      "questions": "Which country is known as the Land of the Rising Sun?",
      "options": ["China", "Japan", "South Korea", "Thailand"],
      "answerIndex": 1,
    },
    {
      "questions": "What is the largest lake in the world by area?",
      "options": [
        "Lake Superior",
        "Caspian Sea",
        "Lake Victoria",
        "Lake Baikal"
      ],
      "answerIndex": 1,
    },
  ];

  static List historyList = [
    {
      "questions": "Who was the first President of the United States?",
      "options": [
        "George Washington",
        "Thomas Jefferson",
        "John Adams",
        "Abraham Lincoln"
      ],
      "answerIndex": 0,
    },
    {
      "questions": "What year did the Titanic sink?",
      "options": ["1912", "1905", "1918", "1925"],
      "answerIndex": 0,
    },
    {
      "questions": "Who painted the Mona Lisa?",
      "options": [
        "Vincent van Gogh",
        "Leonardo da Vinci",
        "Michelangelo",
        "Raphael"
      ],
      "answerIndex": 1,
    },
    {
      "questions": "What year did the Berlin Wall fall?",
      "options": ["1989", "1991", "1975", "1995"],
      "answerIndex": 0,
    },
    {
      "questions": "Which empire was ruled by Genghis Khan?",
      "options": [
        "Mongol Empire",
        "Ottoman Empire",
        "Roman Empire",
        "British Empire"
      ],
      "answerIndex": 0,
    },
    {
      "questions": "Who discovered America?",
      "options": [
        "Christopher Columbus",
        "Leif Erikson",
        "Ferdinand Magellan",
        "Vasco da Gama"
      ],
      "answerIndex": 0,
    },
  ];

  static List mathematicsList = [
    {
      "questions": "What is the sum of angles in a triangle?",
      "options": ["90°", "180°", "360°", "270°"],
      "answerIndex": 1,
    },
    {
      "questions": "What is 3/4 expressed as a decimal?",
      "options": ["0.75", "0.5", "0.25", "0.3"],
      "answerIndex": 0,
    },
    {
      "questions": "What is 10 factorial (10!)?",
      "options": ["1000", "3628800", "720", "5040"],
      "answerIndex": 1,
    },
    {
      "questions": "How many sides does a dodecagon have?",
      "options": ["8", "10", "12", "14"],
      "answerIndex": 2,
    },
    {
      "questions": "What is the cube root of 27?",
      "options": ["9", "6", "3", "4"],
      "answerIndex": 2,
    },
    {
      "questions":
          "If a rectangle's length is 10 and width is 5, what is the area?",
      "options": ["15", "20", "50", "100"],
      "answerIndex": 2,
    },
  ];
}
