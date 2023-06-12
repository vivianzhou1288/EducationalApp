//
//  MenuViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/12/23.
//

import UIKit

class MenuViewController: UIViewController {
    
    let profileButton = UIButton()
    let psetLabel = UILabel()
    let videoLabel = UILabel()
    let essayLabel = UILabel()
    let labLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .gray
        
        profileButton.setImage(UIImage(named: "profilePic"), for: .normal)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileButton)
        
        psetLabel.text = "Pset"
        psetLabel.font = .systemFont(ofSize: 20)
        psetLabel.textColor = .white
        psetLabel.backgroundColor = UIColor(red: 181, green: 179, blue: 211, alpha: 0)
        psetLabel.layer.borderWidth = 2.0
        psetLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        
    

    }
    


}
