//
//  Question.swift
//  iQuiz
//
//  Created by Daniel Ancines on 10/11/24.
//

import Foundation
struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title:"Qual feitiço para desarmar o seu oponente, em Harry Potter?", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], correctAnswer: 2),
    Question(title:"Quando foi lançado o filme Vingadores Ultimato?", answers: ["2019", "2018", "2017"], correctAnswer: 0),
    Question(title:"Quando foi lançado o filme Avatar 2?", answers: ["2014", "2022", "2023"], correctAnswer: 1)
]
