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
    
    // MARK: - Public properties
    private var acsseslevel = Level.one
    
    // MARK: - Private properties
    private var level: Level?
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("LevelViewController was been init")
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // MARK: - IBActions
    @IBAction func levelButtonPressed(_ sender: UIButton) {
        guard let levelIndex = levelButtons.firstIndex(of: sender) else { return }
        level = Level.element(at: levelIndex)
        guard let level = level else { return }
        performSegue(withIdentifier: "categorySegue", sender: nil)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        if let _ = segue.source as? ResultViewController {
            //  передать доступный уровень
        }
    }
    
    // MARK: - DeInitializers
    deinit {
        print("LevelViewController was been dealocated")
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

