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
    var questionsCount = 0
    
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        navigationItem.rightBarButtonItem?.title = "Начать заново"
        
        resultTextLabel.text = printResult()
        
    }
    
}


// MARK: - Private Methods

extension ResultViewController {
    
    func printResult() -> String {
        
        var resultEmoji = ResultType.notPassed.rawValue
        var resultString = ResultType.notPassed.definition
        var resultCount = 0
        
        for answer in answersChoosen {
            if answer.points == 1 {
                resultCount += 1
            }
            
            if resultCount == questionsCount {
                resultEmoji = ResultType.Passed.rawValue
                resultString = ResultType.Passed.definition
            }
        }
        
        return ("\(resultCount)/\(questionsCount) \(resultEmoji) \(resultString)")
        
    }
}
