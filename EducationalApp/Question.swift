//
//  Question.swift
//  EducationalApp
//
//  Created by Vivian Zhou on 6/23/23.
//

import Foundation
import UIKit

class Question {
    var question: String
    var answer: String
    var point: Int
    
    init(question: String, answer: String, point: Int){
        self.question = question
        self.answer = answer
        self.point = point
    }
}
