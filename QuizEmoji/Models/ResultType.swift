//
//  ResultType.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

enum ResultType: Character {
    case notPassed = "😢"
    case Passed = "😀"

    var definition: String {
        switch self {
        case .notPassed:
            return "Вы не прошли. Попробуйте снова!"
        case .Passed:
            return "Поздравляем! Вы прошли испытание!"
        }
    }
}
