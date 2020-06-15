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
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IB Actions
    @IBAction func categoryButtonPressed(_ sender: UIButton) {
        guard let categoryIndex = categoryButtons.firstIndex(of: sender) else { return }
        category = Category.element(at: categoryIndex)
        guard let category = category else { return }
        let questions = Question.getQuestions(level: level, category: category)
        guard questions.count != 0 else { return }
        performSegue(withIdentifier: "questionSegue", sender: nil)
    }
    
}

// MARK: - Private Methods
extension CategoryViewController {
    
    private func updateUI() {
        for (button, category) in zip(categoryButtons, Category.allCases) {
            button.setTitle(category.rawValue, for: .normal)
        }
    }
    
}

// MARK: - Navigation
extension CategoryViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "questionSegue" {
            let questionViewController = segue.destination as! QuestionViewController
            questionViewController.level = level
            questionViewController.category = category
        }
    }
    
}
