//
//  Question.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

struct Question {
    let level: Level
    let category: Category
    let emoji: String
    let text: String
    let answers: [Answer]
}

extension Question {
    
    static func getQuestions() -> [Question] {

            return [
                Question(
                    level: .one,
                    category: .auto,
                    emoji: "🌍🚗🔋🔇",
                    text: """
                Чтобы не дать вам ошибиться в этом' вопросе, мы даже «срезали» крышу у красной машинки – для пущей достоверности. Кого загадали?
                """,
                    answers: [
                        Answer(text: "Tesla",
                               correct: true,
                               answerText: "Этот вопрос был полной халявой!",
                               points: 1),
                        Answer(text: "Geo",
                               correct: false,
                               answerText: "Не верно",
                               points: 0),
                        Answer(text: "Honda",
                               correct: false,
                               answerText: "Не верно",
                               points: 0),
                        Answer(text: "Lancia",
                               correct: false,
                               answerText: "Не верно",
                               points: 0)
                    ]
                )
                // продолжить заполнять вопросы через запятую
            ]
 
    }
    
    static func getQuestions(level: Level, category: Category) -> [Question] {
        
        var count = 0
        var questionsFilter = [Question]()
        let questions = getQuestions()
        for question in questions {
            guard count <= 10 else { break }
            if level == question.level && category == question.category {
                questionsFilter.append(question)
                count += 1
            }
        }
        return questionsFilter.shuffled()
        
    }
}
