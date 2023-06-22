//
//  PsetViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/13/23.
//

import UIKit

class PsetViewController: UIViewController {
    
    let psetLabel = UILabel()
    let questionLabel = UILabel()
    let answerTextField = UITextField()
    var bottomLine = CALayer()
    let submitButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        psetLabel.text = "PSET"
        psetLabel.font = .systemFont(ofSize: 30)
        psetLabel.textColor = UIColor(red: 181, green: 179, blue: 211)
        psetLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(psetLabel)
        
        questionLabel.text = "4 + 3 = ?"
        questionLabel.font = .systemFont(ofSize: 25)
        questionLabel.textColor = .white
        questionLabel.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        questionLabel.textAlignment = .center
        questionLabel.layer.masksToBounds = true
        questionLabel.layer.cornerRadius = 10
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(questionLabel)
        
        bottomLine.frame = CGRect(x: 0.0, y: answerTextField.frame.height - 1, width: answerTextField.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.white.cgColor
//        answerTextField.placeholder = "Type Your Answer"
        answerTextField.borderStyle = UITextField.BorderStyle.none
        answerTextField.layer.addSublayer(bottomLine)
        view.addSubview(answerTextField)
        
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
            answerTextField.topAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 50)
        ])
    }
    

}
