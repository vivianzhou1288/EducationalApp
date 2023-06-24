//
//  PsetViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/13/23.
//

import UIKit

class PsetViewController: UIViewController {
    
    var questions: [Question] = []
    var number = 0
    var points = 0
    let psetLabel = UILabel()
    let questionLabel = UILabel()
    let answerTextField = UITextField()
    var bottomLine = CALayer()
    let submitButton = UIButton()

    weak var del: updatePoints?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        let question1 = Question(question: "4 + 3 = ?", answer: "7", point: 3)
        let question2 = Question(question: "9 - 4 = ?", answer: "5", point: 3)
        let question3 = Question(question: "8 + 8 = ?", answer: "16", point: 4)
        let question4 = Question(question: "25 - 14 = ?", answer: "11", point: 4)
        let question5 = Question(question: "30 - 18 = ?", answer: "12", point: 6)
        questions = [question1, question2, question3, question4, question5]
        
        psetLabel.text = "Math"
        psetLabel.font = UIFont(name: "CoveredByYourGrace", size: 40)
        psetLabel.textColor = UIColor(red: 181, green: 179, blue: 211)
        psetLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(psetLabel)
        
        questionLabel.text = "4 + 3 = ?"
        questionLabel.font = UIFont(name: "CoveredByYourGrace", size: 35)
        questionLabel.textColor = .white
        questionLabel.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        questionLabel.textAlignment = .center
        questionLabel.layer.masksToBounds = true
        questionLabel.layer.cornerRadius = 10
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionLabel)
        
        bottomLine.frame = CGRect(x: 0.0, y: answerTextField.frame.height - 1, width: answerTextField.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
        answerTextField.placeholder = "Type Your Answer"
        answerTextField.font = UIFont(name: "CoveredByYourGrace", size: 30)
        answerTextField.textColor = .white
        answerTextField.textAlignment = .center
//        answerTextField.borderStyle = UITextField.BorderStyle.none
        answerTextField.layer.addSublayer(bottomLine)
        answerTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(answerTextField)
        
        submitButton.setTitle("Submit", for: .normal)
        submitButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 25)
        submitButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        submitButton.layer.cornerRadius = 7
        submitButton.addTarget(self, action: #selector(correct), for: .touchUpInside)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(submitButton)
        
        setUpConstraints()
        
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            psetLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            psetLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionLabel.topAnchor.constraint(equalTo: psetLabel.bottomAnchor, constant: 100),
            questionLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            questionLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.65)
        ])
        
        NSLayoutConstraint.activate([
            answerTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            answerTextField.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 100)
        ])
        
        NSLayoutConstraint.activate([
            submitButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            submitButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            submitButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3)
        ])
    }
    
    @objc func correct(){
        if answerTextField.text == questions[number].answer{
            if number < 4 {
                number += 1
                questionLabel.text = questions[number].question
                points += questions[number].point
            }
            
            if number == 4 {
                let levelupVC = LevelUpViewController()
                levelupVC.modalPresentationStyle = .overCurrentContext
                levelupVC.modalTransitionStyle = .crossDissolve
                levelupVC.popoverPresentationController?.permittedArrowDirections = .any
                present(levelupVC, animated: true, completion: nil)
            }
        }
        else{
            let popupVC = PopUpViewController()
            popupVC.modalPresentationStyle = .overCurrentContext
            popupVC.modalTransitionStyle = .crossDissolve
            popupVC.popoverPresentationController?.permittedArrowDirections = .any
            present(popupVC, animated: true, completion: nil)
        }
        
        answerTextField.text = ""
    }
    
}

protocol updatePoints: UIViewController {
    func updatePoints(point: Int)
}
