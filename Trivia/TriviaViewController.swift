//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Samir Hassan on 3/11/24.
//

import UIKit
import Foundation

class TriviaViewController: UIViewController {

    var index = 0
    var totalScore = 0
    var correctAnswers = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        let currentQuestion = questions[index]
        displayQuestion(question: currentQuestion)

        // Do any additional setup after loading the view.
    }
    func displayQuestion(question: QuestionAnswer) {
        let questionNumber = index + 1
        let totalQuestions = questions.count
        questionLabel.text = "Question \(questionNumber) of \(totalQuestions)"
        typeQuestionLabel.text = question.questionType // assuming you want to display the question type
        questionDescriptionText.text = question.question
        
        // Set titles for answer buttons
        answer1.setTitle(question.answers[0], for: .normal)
        answer2.setTitle(question.answers[1], for: .normal)
        answer3.setTitle(question.answers[2], for: .normal)
        answer4.setTitle(question.answers[3], for: .normal)
    }

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var typeQuestionLabel: UILabel!
    
    @IBOutlet weak var questionDescriptionText: UITextField!
    
    
    @IBAction func answer1(_ sender: UIButton) {
        checkAnswer(selectedIndex: 0)

    }
    @IBOutlet weak var answer1: UIButton! //we have the outlets so we can set the titles of these buttons to be answer choices
    
    @IBAction func answer2(_ sender: UIButton) {
        checkAnswer(selectedIndex: 1)

    }
    @IBOutlet weak var answer2: UIButton!
    
    @IBAction func answer3(_ sender: UIButton) {
        checkAnswer(selectedIndex: 2)

    }
    @IBOutlet weak var answer3: UIButton!
    
    @IBAction func answer4(_ sender: UIButton) {
        checkAnswer(selectedIndex: 3)

    }
    @IBOutlet weak var answer4: UIButton!
    
    func checkAnswer(selectedIndex: Int) {
        let currentQuestion = questions[index]
        if selectedIndex == currentQuestion.correctAnswerIndex {
            // Correct answer
            totalScore += 1 // Increment the score
        }
        
        let correctAnswer = currentQuestion.answers[currentQuestion.correctAnswerIndex]
        let alertController = UIAlertController(title: selectedIndex == currentQuestion.correctAnswerIndex ? "Correct!" : "Wrong!", message: selectedIndex == currentQuestion.correctAnswerIndex ? "Congratulations, you got it right!\nScore: \(totalScore) / \(questions.count)" : "Oops! The correct answer is \(correctAnswer).\nScore: \(totalScore) / \(questions.count)", preferredStyle: .alert)
        let nextQuestionAction = UIAlertAction(title: "Next Question", style: .default) { _ in
            // Move to the next question
            self.moveToNextQuestion()
        }
        alertController.addAction(nextQuestionAction)
        present(alertController, animated: true, completion: nil)
    }

    func moveToNextQuestion() {
        index += 1
        if index < questions.count {
            // If there are more questions, display the next one
            let currentQuestion = questions[index]
            displayQuestion(question: currentQuestion)
        } else {
            // If all questions have been answered, show the score
            showScore()
        }
    }

    func showScore() {
        let alertController = UIAlertController(title: "Game Over", message: "You have answered all questions!\nTotal Score: \(totalScore) / \(questions.count)\nCorrect Answers: \(totalScore)", preferredStyle: .alert)
        let okayAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
        alertController.addAction(okayAction)
        present(alertController, animated: true, completion: nil)
    }
}
