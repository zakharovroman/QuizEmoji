//
//  CategoryViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var categoryButtons: [UIButton]!
    
    // MARK: - Private properties
    var level: Level!
    private var category: Category?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(level ?? "Не выбран уровень")
    }
    
    
    @IBAction func categoryButtonPressed(_ sender: UIButton) {
           guard let categoryIndex = categoryButtons.firstIndex(of: sender) else { return }
                category = Category.element(at: categoryIndex)
                performSegue(withIdentifier: "questionSegue", sender: nil)
                
            }
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
                    //ЗДЕСЬ ПЕРЕДАEM УРОВЕНЬ И КАТГОРИЮ В ПЕРЕМЕННЫЕ КЛАССА
                let questionViewController = segue.destination as! QuestionViewController
                    questionViewController.level = level
                    questionViewController.category = category
                }
            }
        }
