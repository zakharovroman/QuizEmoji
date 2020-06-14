//
//  ResultViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultTextLabel: UILabel!
    
    var answersChoosen: [Answer] = []
    var acssesLevel = Level.one
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ResultViewController was been init")
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem?.title = "Начать заново"
    }
    
   deinit {
        print("ResultViewController was been dealocated")
    }
}


// MARK: - Private Methods
extension ResultViewController {

    private func updateUI() {

        
    }
    
}
