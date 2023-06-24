//
//  LevelUpViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/23/23.
//

import UIKit

class LevelUpViewController: UIViewController {
    
    let levelupBox: UIView = {
           let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .green
            return view
    }()
    
    let levelImageView = UIImageView()
    let levelLabel = UILabel()
    let continueButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .clear

        self.definesPresentationContext = true
        
        levelupBox.backgroundColor = .white
        
        levelImageView.image = UIImage(named: "up")
        levelImageView.translatesAutoresizingMaskIntoConstraints = false
        levelupBox.addSubview(levelImageView)
        
        levelLabel.text = "Your have level up!"
        levelLabel.font = UIFont(name: "CoveredByYourGrace", size: 20)
        levelLabel.textColor = .black
        levelLabel.translatesAutoresizingMaskIntoConstraints = false
        levelupBox.addSubview(levelLabel)
        
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 20)
        continueButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        continueButton.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        continueButton.layer.cornerRadius = 7
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        levelupBox.addSubview(continueButton)
        
        setupViews()
    }
    
    func setupViews() {
         view.addSubview(levelupBox)

            levelupBox.heightAnchor.constraint(equalToConstant: 200).isActive = true
            levelupBox.widthAnchor.constraint(equalToConstant: 300).isActive = true
            levelupBox.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            levelupBox.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            levelImageView.topAnchor.constraint(equalTo: levelupBox.topAnchor, constant: 30),
            levelImageView.widthAnchor.constraint(equalTo: levelupBox.widthAnchor, multiplier: 0.20),
            levelImageView.heightAnchor.constraint(equalTo: levelupBox.heightAnchor, multiplier: 0.32),
            levelImageView.leadingAnchor.constraint(equalTo: levelupBox.leadingAnchor, constant: 10)
        ])

        NSLayoutConstraint.activate([
            levelLabel.topAnchor.constraint(equalTo: levelupBox.topAnchor, constant: 45),
            levelLabel.leadingAnchor.constraint(equalTo: levelImageView.trailingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            continueButton.centerXAnchor.constraint(equalTo: levelupBox.centerXAnchor),
            continueButton.bottomAnchor.constraint(equalTo: levelupBox.bottomAnchor, constant: -10),
            continueButton.widthAnchor.constraint(equalTo: levelupBox.widthAnchor, multiplier: 0.35),
            continueButton.heightAnchor.constraint(equalTo: levelupBox.heightAnchor, multiplier: 0.12)
        ])
    }
    
    @objc func clickedButton(){
        dismiss(animated: true)
    }
}
