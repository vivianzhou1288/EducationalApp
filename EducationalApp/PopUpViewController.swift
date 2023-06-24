//
//  PopUpViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/23/23.
//

import UIKit

class PopUpViewController: UIViewController {
    
    let popupBox: UIView = {
           let view = UIView()
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .green
            return view
    }()
    
    let incorrectImageView = UIImageView()
    let incorrectLabel = UILabel()
    let continueButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .clear

        self.definesPresentationContext = true
        
        popupBox.backgroundColor = .white
        
        incorrectImageView.image = UIImage(named: "x")
        incorrectImageView.translatesAutoresizingMaskIntoConstraints = false
        popupBox.addSubview(incorrectImageView)
        
        incorrectLabel.text = "Your answer is incorrect."
        incorrectLabel.font = UIFont(name: "CoveredByYourGrace", size: 20)
        incorrectLabel.textColor = .black
        incorrectLabel.translatesAutoresizingMaskIntoConstraints = false
        popupBox.addSubview(incorrectLabel)
        
        continueButton.setTitle("Continue", for: .normal)
        continueButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 20)
        continueButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        continueButton.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        continueButton.layer.cornerRadius = 7
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        popupBox.addSubview(continueButton)
        
        setupViews()
    }
    
    func setupViews() {
         view.addSubview(popupBox)

            popupBox.heightAnchor.constraint(equalToConstant: 200).isActive = true
            popupBox.widthAnchor.constraint(equalToConstant: 300).isActive = true
            popupBox.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
            popupBox.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            incorrectImageView.topAnchor.constraint(equalTo: popupBox.topAnchor, constant: 30),
            incorrectImageView.widthAnchor.constraint(equalTo: popupBox.widthAnchor, multiplier: 0.25),
            incorrectImageView.heightAnchor.constraint(equalTo: popupBox.heightAnchor, multiplier: 0.25),
            incorrectImageView.leadingAnchor.constraint(equalTo: popupBox.leadingAnchor, constant: 10)
        ])

        NSLayoutConstraint.activate([
            incorrectLabel.topAnchor.constraint(equalTo: popupBox.topAnchor, constant: 40),
            incorrectLabel.leadingAnchor.constraint(equalTo: incorrectImageView.trailingAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            continueButton.centerXAnchor.constraint(equalTo: popupBox.centerXAnchor),
            continueButton.bottomAnchor.constraint(equalTo: popupBox.bottomAnchor, constant: -10),
            continueButton.widthAnchor.constraint(equalTo: popupBox.widthAnchor, multiplier: 0.35),
            continueButton.heightAnchor.constraint(equalTo: popupBox.heightAnchor, multiplier: 0.12)
        ])
    }
    
    @objc func clickedButton(){
        dismiss(animated: true)
    }
}
