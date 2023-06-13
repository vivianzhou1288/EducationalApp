//
//  ViewController.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    let nameLabel = UILabel()
    let startButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 217, green: 217, blue: 217)
        
        nameLabel.text = "Name"
        nameLabel.font = .systemFont(ofSize: 30)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        startButton.setImage(UIImage(named: "startButton"), for: .normal)
        startButton.addTarget(self, action: #selector(clickedButton), for: .touchUpInside)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(startButton)
        
        setUpConstraints()
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
        
        NSLayoutConstraint.activate([
            startButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6),
            startButton.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.27),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            
        ])
    }
    
    @objc func clickedButton(){
        let vc = MenuViewController()
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
