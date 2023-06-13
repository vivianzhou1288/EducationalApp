//
//  ProfileViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/13/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileImageView = UIImageView()
    let nameLabel = UILabel()
    let pointLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        profileImageView.image = UIImage(named: "profilePic")
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileImageView)
        
        nameLabel.text = "user7273462739"
        nameLabel.font = .systemFont(ofSize: 25)
        nameLabel.textColor = UIColor(red: 181, green: 179, blue: 211)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        pointLabel.text = "283569279384 pts"
        pointLabel.font = .systemFont(ofSize: 25)
        pointLabel.textColor = UIColor(red: 181, green: 179, blue: 211)
        pointLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pointLabel)
        
        
        setUpConstraints()
    }
    
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250)
        ])
        
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 30)
        ])
        
        NSLayoutConstraint.activate([
            pointLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pointLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 30)
        ])
    }
}
