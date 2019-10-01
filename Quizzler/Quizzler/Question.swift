//
//  Question.swift
//  Quizzler
//
//  Created by Serkan Ok on 21.09.2019.

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init (text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
