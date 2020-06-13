//
//  QuestionViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit
/* Шаблон структуры класса

MARK: перед классом перечисления и структуры
 
MARK: IBOutlets - аутлеты
MARK: Public properties - публичные переменные и константы
MARK: Private properties - приватные переменные и константы
MARK: Initializers - инициализаторы класса
MARK: Override Methods - переопределенные методы
 MARK: Life Cycles Methods  - отдельные типы переопределенных методов
 MARK: Navigation - переопределяемые методы для навигации
  Если же вы работаете с вью контроллером, то переопределенные методы идут сразу после свойств класса
MARK: IBActions - методы связанные с пользовательским интерфейсом
MARK: Public Methods - публичные методы класса
MARK: Private Methods - приватные методы класса
MARK: Extensions после класса
 
*/

class QuestionViewController: UIViewController {

    // MARK: Public properties
    var level = Level.one
    var category = Category.auto
    // заменить когда будет вызов
    //var level: Level!
    //var category: Category!
    
    //MARK: Private properties
    private var questions = [Question]()
    private var questionIndex = 0
    private var answersChoosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        questions = Question.getQuestions(level: level, category: category)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //navigationItem.hidesBackButton = true
        navigationItem.leftBarButtonItem?.title = "Прервать"
        updateUI()
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


//   // MARK: - IB Actions
//    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
//        guard let answerIndex = singleButtons.firstIndex(of: sender) else { return }
//        let currentAnswer = currentAnswers[answerIndex]
//        answersChoosen.append(currentAnswer)
//        nextQuestion()
//    }
//
//    @IBAction func multipleAnswerButtonPressed() {
//        for (multipleSwitch, answer) in zip(multipleSwitches, currentAnswers) {
//            if multipleSwitch.isOn {
//                answersChoosen.append(answer)
//            }
//        }
//
//        nextQuestion()
//    }
//
//    @IBAction func rangedAnswerButtonPressed() {
//        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
//        let currentAnswer = currentAnswers[index]
//        answersChoosen.append(currentAnswer)
//        nextQuestion()
//    }
//
//    deinit {
//        print("QuestionsViewController was been dealocated")
//    }

// MARK: - Private Methods
extension QuestionViewController {
    private func updateUI() {
        
//        // Hide everything
//        for stackView in [singleStackView, multipleStackView, rangedStackView] {
//            stackView?.isHidden = true
//        }
//
//        // Get current question
//        let currentQuestion = questions[questionIndex]
//
//        // Set current question for question label
//        questionLabel.text = currentQuestion.text
//
//        // Calculate progress
//        let totalProgress = Float(questionIndex) / Float(questions.count)
//
//        // Set progress for progress view
//        progressView.setProgress(totalProgress, animated: true)
//
//        // Set navigation title
//        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
//
//        showCurrentAnswers(for: currentQuestion)
    }
    
    private func showCurrentAnswers(for question: Question) {
//        switch question.type {
//        case .single: showSingleStackView(with: currentAnswers)
//        case .multiple: showMultipleStackView(with: currentAnswers)
//        case .ranged: showRangedStackView(with: currentAnswers)
//        }
    }
    
    private func showSingleStackView(with answers: [Answer]) {
//        singleStackView.isHidden = false
//
//        for (button, answer) in zip(singleButtons, answers) {
//            button.setTitle(answer.text, for: .normal)
//        }
    }
    
    private func showMultipleStackView(with answers: [Answer]) {
//        multipleStackView.isHidden = false
//
//        for (label, answer) in zip(multipleLabels, answers) {
//            label.text = answer.text
//        }
    }
    
    private func showRangedStackView(with answers: [Answer]) {
//        rangedStackView.isHidden = false
//
//        rangedLabels.first?.text = answers.first?.text
//        rangedLabels.last?.text = answers.last?.text
    }
}

// MARK: - Navigation
extension QuestionViewController {
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            //performSegue(withIdentifier: "ResultSegue", sender: nil)
        }
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "ResultSegue" else { return }
//        let resultsVC = segue.destination as! ResultsViewController
//        resultsVC.answers = answersChoosen
//    }
}
