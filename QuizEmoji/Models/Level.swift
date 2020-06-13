//
//  Level.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

enum Level: String, CaseIterable {
    case one = "Начальный"
    case two = "Продвинутый"
    case three = "Экспертный"
    
    //Возвращает по элементу индекс
    static func index(of element: Level) -> Int {
        var elements: [Level] = []
        for element in Level.allCases {
            elements.append(element)
        }

        return elements.firstIndex(of: element)!
    }
    
    //Возвращает по индексу элемент
    static func element(at index: Int) -> Level? {
        var elements: [Level] = []
        for element in Level.allCases {
            elements.append(element)
        }
        
        if index >= 0 && index < elements.count {
            return elements[index]
        } else {
            return nil
        }
    }
}
