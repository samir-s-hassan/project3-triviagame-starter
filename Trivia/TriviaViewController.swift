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

    override func viewDidLoad() {
        super.viewDidLoad()
        let currentQuestion = questions[index]
        displayQuestion(question: currentQuestion)

        // Do any additional setup after loading the view.
    }
    func displayQuestion(question: QuestionAnswer) {
        var myString = String(index)
        questionLabel.text = "Question " + myString
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
    }
    
    @IBOutlet weak var answer1: UIButton!
    
    @IBAction func answer2(_ sender: UIButton) {
    }
    
    
    @IBOutlet weak var answer2: UIButton!
    @IBAction func answer3(_ sender: UIButton) {
    }
    
    @IBOutlet weak var answer3: UIButton!
    
    @IBAction func answer4(_ sender: UIButton) {
    }
    
    @IBOutlet weak var answer4: UIButton!
    
    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
