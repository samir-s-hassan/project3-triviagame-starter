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

    override func viewDidLoad() {
        super.viewDidLoad()
        let currentQuestion = questions[index]
        displayQuestion(question: currentQuestion)
        addGradient()

        // Do any additional setup after loading the view.
    }
    func displayQuestion(question: QuestionAnswer) {
        let questionNumber = index + 1
        let totalQuestions = questions.count
        questionLabel.text = "Question \(questionNumber) of \(totalQuestions)"
        typeQuestionLabel.text = question.questionType // assuming you want to display the question type
        questionDescriptionText.lineBreakMode = .byWordWrapping //helps the text go to next line
        questionDescriptionText.numberOfLines = 0
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
    
    func restartGame() {
        index = 0 // Reset the index to start from question 0
        totalScore = 0 // Reset the score to 0
        displayQuestion(question: questions[index]) // Display the first question
    }
    func showScore() {
        let alertController = UIAlertController(title: "Game Over", message: "You have answered all questions!\nTotal Score: \(totalScore) / \(questions.count)\nCorrect Answers: \(totalScore)", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Restart", style: .default) { _ in
            self.restartGame() // Restart the game when the user taps "Restart"
        }
        alertController.addAction(restartAction)
        present(alertController, animated: true, completion: nil)
    }
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor(red: 0.75, green: 0.94, blue: 0.80, alpha: 1.00).cgColor,
                                UIColor(red: 0.62, green: 0.88, blue: 0.66, alpha: 1.00).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
