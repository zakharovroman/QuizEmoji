//
//  ResultViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

protocol NewResultViewControllerDelegate {
    func saveResult(_ result: Result)
}

class ResultViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var resultTextLabel: UILabel!
    
    // MARK: - Public properties
    var delegate: NewResultViewControllerDelegate!
    var answersChoosen: [Answer] = []
    var questionsCount = 0
    var acssesLevel = Level.one
    var level: Level!
    var category: Category!
    
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
        
        var resultEmoji = ResultType.notPassed.rawValue
        var resultString = ResultType.notPassed.definition
        var status = StatusTest.notPassed
        var resultCount = 0
        
        
            for answer in answersChoosen {
                if answer.points == 1 {
                    resultCount += 1
                }
           
            
            if resultCount == questionsCount {
                resultEmoji = ResultType.Passed.rawValue
                resultString = ResultType.Passed.definition
                status = .Passed
            }
        }
        
        // для тестирования
        let result = Result(level: level, category: category, date: Date(), statusTest: status, points: resultCount, pointsOf: questionsCount)
        resultsGlobal.append(result)
        
        //delegate.saveResult(result)
        
        return ("\(resultCount)/\(questionsCount) \(resultEmoji) \(resultString)")
        
    }
}
