//
//  CategoryViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    
    @IBOutlet var categoryButtons: [UIButton]!
    
    var nameCategory = ""
    var level: Level!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(level ?? "Не выбран уровень")
    }
    
    
    @IBAction func categoryButtonPressed(_ sender: Any) {
        
        let currentLevel = (sender as! UIButton).tag
        
        switch currentLevel {
        case 0: nameCategory = "Автомобили"
        case 1: nameCategory = "Кино"
        case 2: nameCategory = "Книги"
        default:
            break
        }
        performSegue(withIdentifier: "questionSegue", sender: nil)    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension CategoryViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "questionSegue" {
            //ЗДЕСЬ ПЕРЕДАТЬ УРОВЕНЬ И КАТГОРИЮ В ПЕРЕМЕННЫЕ КЛАССА
//            var level = Level.one
//            var category = Category.auto
            
            //let categoryResult = segue.destination as! QuestionViewController
            //categoryResult.nameCategoryForQuestions = nameCategory
            //categoryResult.nameLevelForQuestions = resultLevel
            
        }
    }
}
