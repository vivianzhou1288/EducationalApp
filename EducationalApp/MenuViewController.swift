//
//  MenuViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/12/23.
//

import UIKit

class MenuViewController: UIViewController {
    
    let profileButton = UIButton()
    let psetButton = UIButton()
    let videoButton = UIButton()
    let essayButton = UIButton()
    let labButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.setHidesBackButton(true, animated: false)
        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        profileButton.setImage(UIImage(named: "profilePic"), for: .normal)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileButton)
        
        psetButton.setTitle("Pset", for: .normal)
        psetButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        psetButton.layer.cornerRadius = 7
        psetButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(psetButton)
        
        videoButton.setTitle("Videos", for: .normal)
        videoButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        videoButton.layer.cornerRadius = 7
        videoButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(videoButton)
        
        essayButton.setTitle("Essays", for: .normal)
        essayButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        essayButton.layer.cornerRadius = 7
        essayButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(essayButton)
        
        labButton.setTitle("Labs", for: .normal)
        labButton.backgroundColor = UIColor(red: 181, green: 179, blue: 211)
        labButton.layer.cornerRadius = 7
        labButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labButton)
        
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            profileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            profileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            profileButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.37),
            profileButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.15)
        ])
        
        NSLayoutConstraint.activate([
            psetButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            psetButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150),
            psetButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3)
        ])
        
        NSLayoutConstraint.activate([
            videoButton.topAnchor.constraint(equalTo: psetButton.topAnchor, constant: 85),
            videoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            videoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3)
        ])
        
        NSLayoutConstraint.activate([
            essayButton.topAnchor.constraint(equalTo: videoButton.topAnchor, constant: 85),
            essayButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            essayButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3)
        ])
        
        NSLayoutConstraint.activate([
            labButton.topAnchor.constraint(equalTo: essayButton.topAnchor, constant: 85),
            labButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3)
        ])
        
    }
    


}
