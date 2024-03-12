//
//  QuestionAnswerData.swift
//  Trivia
//
//  Created by Samir Hassan on 3/12/24.
//

import Foundation
import UIKit

struct QuestionAnswer {
    let question: String
    let answers: [String]
    let correctAnswerIndex: Int
    let questionType: String // Add question type property
    
    init(question: String, answers: [String], correctAnswerIndex: Int, questionType: String) {
        self.question = question
        self.answers = answers
        self.correctAnswerIndex = correctAnswerIndex
        self.questionType = questionType
    }
}

let question1 = QuestionAnswer(question: "What is the capital of Japan?",
                                answers: ["Beijing", "Seoul", "Tokyo", "Bangkok"],
                                correctAnswerIndex: 2,
                                questionType: "Geography")

let question2 = QuestionAnswer(question: "Which planet is known as the Red Planet?",
                                answers: ["Earth", "Mars", "Venus", "Jupiter"],
                                correctAnswerIndex: 1,
                                questionType: "Geography")

let question3 = QuestionAnswer(question: "Who wrote the play 'Hamlet'?",
                                answers: ["William Shakespeare", "Jane Austen", "Charles Dickens", "Leo Tolstoy"],
                                correctAnswerIndex: 0,
                                questionType: "Literature")

let question4 = QuestionAnswer(question: "What is the chemical symbol for water?",
                                answers: ["H", "H2O", "W", "HO"],
                                correctAnswerIndex: 1,
                                questionType: "Science")

let question5 = QuestionAnswer(question: "Which country is known as the Land of the Rising Sun?",
                                answers: ["China", "Japan", "South Korea", "Vietnam"],
                                correctAnswerIndex: 1,
                                questionType: "Geography")

let question6 = QuestionAnswer(question: "Who painted the Mona Lisa?",
                                answers: ["Vincent van Gogh", "Leonardo da Vinci", "Pablo Picasso", "Michelangelo"],
                                correctAnswerIndex: 1,
                                questionType: "Art")

let question7 = QuestionAnswer(question: "What is the largest mammal in the world?",
                                answers: ["Elephant", "Blue Whale", "Giraffe", "Hippopotamus"],
                                correctAnswerIndex: 1,
                                questionType: "Biology")

let question8 = QuestionAnswer(question: "Which city is known as the Big Apple?",
                                answers: ["Los Angeles", "Chicago", "New York City", "San Francisco"],
                                correctAnswerIndex: 2,
                                questionType: "History")

let question9 = QuestionAnswer(question: "Who is the author of 'Harry Potter' series?",
                                answers: ["J.K. Rowling", "Stephen King", "George R.R. Martin", "J.R.R. Tolkien"],
                                correctAnswerIndex: 0,
                                questionType: "Literature")

let question10 = QuestionAnswer(question: "What is the smallest bone in the human body?",
                                answers: ["Femur", "Stapes", "Tibia", "Humerus"],
                                correctAnswerIndex: 1,
                                questionType: "Science")

let question11 = QuestionAnswer(question: "Which gas is most abundant in Earth's atmosphere?",
                                answers: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Helium"],
                                correctAnswerIndex: 1,
                                questionType: "Science")

let question12 = QuestionAnswer(question: "What is the chemical symbol for gold?",
                                answers: ["Ag", "Au", "G", "Gl"],
                                correctAnswerIndex: 1,
                                questionType: "Science")

let question13 = QuestionAnswer(question: "Who wrote 'Romeo and Juliet'?",
                                answers: ["Charles Dickens", "Jane Austen", "William Shakespeare", "Emily Bronte"],
                                correctAnswerIndex: 2,
                                questionType: "Literature")

let question14 = QuestionAnswer(question: "What is the largest ocean in the world?",
                                answers: ["Indian Ocean", "Arctic Ocean", "Atlantic Ocean", "Pacific Ocean"],
                                correctAnswerIndex: 3,
                                questionType: "Astronomy")

let question15 = QuestionAnswer(question: "Who is the first person to step on the Moon?",
                                answers: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "Alan Shepard"],
                                correctAnswerIndex: 0,
                                questionType: "Astronomy")
