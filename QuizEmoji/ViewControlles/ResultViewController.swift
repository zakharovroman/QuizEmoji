//
//  ResultViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var resultTextLabel: UILabel!
    
    // MARK: - Public properties
    var answersChoosen: [Answer] = []
    var acssesLevel = Level.one
    
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        print("ResultViewController was been init")
    }
    
   
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem?.title = "Начать заново"
        
        resultTextLabel.text = printResult()
        
    }
    
    // MARK: - DeInitializers
    deinit {
        print("ResultViewController was been dealocated")
    }
}


// MARK: - Private Methods
extension ResultViewController {

    private func updateUI() {

        
    }
    
}

extension ResultViewController {
    
    func printResult() -> String {
        var resultCount = 0
        let resultEmoji: Character
        let resultString: String
        
        for answer in answersChoosen {
            if answer.points == 1 {
                resultCount += 1
            }
        }
        
        if resultCount < 10 {
            resultEmoji = ResultType.notPassed.rawValue
            resultString = ResultType.notPassed.definition
            
        } else {
            resultEmoji = ResultType.Passed.rawValue
            resultString = ResultType.notPassed.definition
            
        }
        return ("\(resultCount)/10 \(resultEmoji) \(resultString)")
    }
}
