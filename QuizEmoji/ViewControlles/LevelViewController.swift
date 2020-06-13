//
//  LevelViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var levelButtons: [UIButton]!
    
    // MARK: - Private properties
    var level: Level?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IBActions
    @IBAction func levelButtonPressed(_ sender: UIButton) {
        guard let levelIndex = levelButtons.firstIndex(of: sender) else { return }
        level = Level.element(at: levelIndex)
        performSegue(withIdentifier: "categorySegue", sender: nil)
    }
    
}

// MARK: - Private Methods
extension LevelViewController {
    
    private func updateUI() {
        for (button, level) in zip(levelButtons, Level.allCases) {
            button.setTitle(level.rawValue, for: .normal)
        }
    }
    
}

// MARK: - Navigation
extension LevelViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "categorySegue" {
            let categoryViewController = segue.destination as! CategoryViewController
            categoryViewController.level = level
        }
    }
    
}

