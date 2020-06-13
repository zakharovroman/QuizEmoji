//
//  LevelViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class LevelViewController: UIViewController {
    
    
    
    @IBOutlet var levelButtons: [UIButton]!
    
    // MARK: - Private properties
    var levelValue = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    // MARK: - IB Actions
    
    @IBAction func levelButtonPressed(_ sender: Any) {
        
        let currentLevel = (sender as! UIButton).tag
        
        switch currentLevel {
        case 0: levelValue = "Начальный"
        case 1: levelValue = "Продвинутый"
        case 2: levelValue = "Экспертный"
        default:
            break
        }
        performSegue(withIdentifier: "categorySegue", sender: nil)
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

// MARK: - Private Methods
extension LevelViewController {
    private func updateUI() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        if segue.identifier == "categorySegue" {
            let levelResult = segue.destination as! CategoryViewController
            levelResult.resultLevel = levelValue
        }
    }
}

