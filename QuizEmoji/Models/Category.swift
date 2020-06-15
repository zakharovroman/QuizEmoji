//
//  Category.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

enum Category: String, CaseIterable {
    case auto = "Автомобили"
    case film = "Кино"
    case book = "Книги"
    
    //Возвращает по индексу элемент
    static func element(at index: Int) -> Category? {
        var elements: [Category] = []
        for element in Category.allCases {
            elements.append(element)
        }
        
        if index >= 0 && index < elements.count {
            return elements[index]
        } else {
            return nil
        }
    }
}
