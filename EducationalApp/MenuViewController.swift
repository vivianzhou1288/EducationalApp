//
//  MenuViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/12/23.
//

import UIKit

var points = 0

class MenuViewController: UIViewController {
    
    let profileButton = UIButton()
    let pointLabel = UILabel()
    let psetButton = UIButton()
    let videoButton = UIButton()
    let essayButton = UIButton()
    let labButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.setHidesBackButton(true, animated: false)
        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        profileButton.setImage(UIImage(named: "profilePic"), for: .normal)
        profileButton.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileButton)
        
        pointLabel.text = String(points) + " pts"
        pointLabel.font = UIFont(name: "CoveredByYourGrace", size: 35)
        pointLabel.textColor = UIColor(red: 181, green: 179, blue: 211)
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointLabel)
        
        psetButton.setTitle("Math", for: .normal)
        psetButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 25)
        psetButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        psetButton.addTarget(self, action: #selector(questionsClicked), for: .touchUpInside)
        psetButton.layer.cornerRadius = 7
        psetButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(psetButton)
        
        videoButton.setTitle("Videos", for: .normal)
        videoButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 25)
        videoButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        videoButton.layer.cornerRadius = 7
        videoButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(videoButton)
        
        essayButton.setTitle("English", for: .normal)
        essayButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 25)
        essayButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        essayButton.layer.cornerRadius = 7
        essayButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(essayButton)
        
        labButton.setTitle("Science", for: .normal)
        labButton.titleLabel?.font = UIFont(name: "CoveredByYourGrace", size: 25)
        labButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        labButton.layer.cornerRadius = 7
        labButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labButton)
        
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            profileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            profileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -5),
            profileButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.30),
            profileButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.12)
        ])
        
        NSLayoutConstraint.activate([
            pointLabel.topAnchor.constraint(equalTo: profileButton.topAnchor, constant: 35),
            pointLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            psetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            psetButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            psetButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
            psetButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)
        ])
        
        NSLayoutConstraint.activate([
            videoButton.topAnchor.constraint(equalTo: psetButton.topAnchor, constant: 120),
            videoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            videoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
            videoButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)
        ])

        NSLayoutConstraint.activate([
            essayButton.topAnchor.constraint(equalTo: videoButton.topAnchor, constant: 120),
            essayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            essayButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
            essayButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)
        ])

        NSLayoutConstraint.activate([
            labButton.topAnchor.constraint(equalTo: essayButton.topAnchor, constant: 120),
            labButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.35),
            labButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.05)
        ])
        
    }
    @objc func clickedButton(){
        let vc = ProfileViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

    @objc func questionsClicked(){
        let vc = PsetViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension ViewController: updatePoints{
    func updatePoints(point: Int) {
        points += point
    }
}
