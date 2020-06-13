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

    // MARK: - IBOutlets
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var questionEmojiTextStackView: UIStackView!
    @IBOutlet weak var answersBattonsStackView: UIStackView!
    
    @IBOutlet weak var questionEmojiLabel: UILabel!
    @IBOutlet weak var questionTextLabel: UILabel!
    
    @IBOutlet var answersButtons: [UIButton]!
    
    @IBOutlet weak var answerTextLabel: UILabel!
    
    // MARK: - Public properties
    var level: Level!
    var category: Category!
    
    //MARK: - Private properties
    private var questions = [Question]()
    private var questionIndex = 0
    private var currentQuestion: Question?
    private var answersChoosen: [Answer] = []
    private var currentAnswers: [Answer] {
        questions[questionIndex].answers
    }
    //private var currentAnswer: Answer?
    
    // MARK: - Initializers
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        questions = Question.getQuestions(level: level, category: category)
        currentQuestion = questions[questionIndex]
        print("QuestionViewController was been init")
    }
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        let cancelBarButtonItem = UIBarButtonItem(title: "Отменить", style: .plain, target: self, action: #selector(cancelTest))
        self.navigationItem.leftItemsSupplementBackButton = true
        self.navigationItem.leftBarButtonItem = cancelBarButtonItem
        
        showCurrentQuestion()
    }
    
    // MARK: - IB Actions
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let answerIndex = answersButtons.firstIndex(of: sender) else { return }
        let currentAnswer = currentAnswers[answerIndex]
        answersChoosen.append(currentAnswer)
        showCurrentAnswer(with: currentAnswer)
    }
    
    @IBAction func nextQuestionBarButtonItem(_ sender: UIBarButtonItem) {
        nextQuestion()
    }
    
    deinit {
         print("QuestionViewController was been dealocated")
     }
}


// MARK: - Private Methods
extension QuestionViewController {
    
    private func showCurrentQuestion() {
        // Hide everything in Answer
        for item in [answerTextLabel] {
            item?.isHidden = true
        }
        for item in [questionEmojiTextStackView, answersBattonsStackView] {
            item?.isHidden = false
        }
            
        // Set current question UI
        questionEmojiLabel.text = currentQuestion?.emoji
        questionTextLabel.text = currentQuestion?.text

        // Calculate progress
        let totalProgress = Float(questionIndex) / Float(questions.count)

        // Set progress for progress view
        progressView.setProgress(totalProgress, animated: true)

        // Set navigation title
        title = "Вопрос № \(questionIndex + 1) из \(questions.count)"

        showAnswersButtons(with: currentAnswers)
    }
    
    private func showAnswersButtons(with answers: [Answer]) {
        for (button, answer) in zip(answersButtons, answers) {
            button.setTitle(answer.text, for: .normal)
        }
    }
    
    private func showCurrentAnswer(with currentAnswer: Answer) {
        // Hide everything in Question
        for item in [questionEmojiTextStackView, answersBattonsStackView] {
            item?.isHidden = true
        }
        answerTextLabel.isHidden = false
        answerTextLabel.text = currentAnswer.text
    }

}

// MARK: - Navigation
extension QuestionViewController {
    
    @objc private func nextQuestion() {
        questionIndex += 1
        if questionIndex < questions.count {
            currentQuestion = questions[questionIndex]
            showCurrentQuestion()
        } else {
            performSegue(withIdentifier: "resultSegue", sender: nil)
        }
    }
    
    @objc private func cancelTest() {
        //self.dismiss(animated: true, completion: nil)
        //self.dismissViewControllerAnimated(true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "resultSegue" else { return }
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.result = "Здесь должен быть результат"
    }
    
}
