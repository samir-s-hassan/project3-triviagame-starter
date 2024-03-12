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

