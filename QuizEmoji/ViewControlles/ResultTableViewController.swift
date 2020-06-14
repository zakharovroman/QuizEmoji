//
//  ResultTableViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class ResultTableViewController: UITableViewController {
    
    // Для теста
    // Todo: будет содержать пустой массив который принимает значения Result
    // наполняется по мере прохождения тестов
    // понять что делать если массив пустой
    var responces: [Result] = [
 //       Result(level: .one, category: .auto, date: Date(), statusTest: .goingThrough, points: 0, pointsOf: 8),
//        Result(level: .one, category: .auto, date: Date(), statusTest: .canceled, points: 1, pointsOf: 8),
//        Result(level: .one, category: .book, date: Date(), statusTest: .goingThrough, points: 2, pointsOf: 8),
//        Result(level: .one, category: .film, date: Date(), statusTest: .notPassed, points: 3, pointsOf: 8),
//        Result(level: .one, category: .auto, date: Date(), statusTest: .Passed, points: 8, pointsOf: 8),

 //       Result(level: .two, category: .auto, date: Date(), statusTest: .canceled, points: 1, pointsOf: 8),
//        Result(level: .two, category: .book, date: Date(), statusTest: .goingThrough, points: 2, pointsOf: 8),
//        Result(level: .two, category: .film, date: Date(), statusTest: .notPassed, points: 3, pointsOf: 8),
//        Result(level: .two, category: .auto, date: Date(), statusTest: .Passed, points: 8, pointsOf: 8),
//
//        Result(level: .three, category: .auto, date: Date(), statusTest: .canceled, points: 1, pointsOf: 8),
//        Result(level: .three, category: .book, date: Date(), statusTest: .goingThrough, points: 2, pointsOf: 8),
//        Result(level: .three, category: .film, date: Date(), statusTest: .notPassed, points: 3, pointsOf: 8),
//        Result(level: .three, category: .auto, date: Date(), statusTest: .Passed, points: 8, pointsOf: 8),
    ]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        responces = resultsGlobal
        setUI()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return Level.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Category.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        50
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        1
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as? HeaderCell
        
        headerCell?.levelLabel.text = Level.allCases[section].rawValue
        
        return headerCell
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellResult", for: indexPath)
        
        cell.selectionStyle = .none
        cell.backgroundColor = .secondarySystemBackground
        cell.textLabel?.font = UIFont.systemFont(ofSize: 12)
        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 12)
        
        cell.textLabel?.text = "Результата еще нет."
        cell.detailTextLabel?.text = ""
        
        for responce in responces {
            switch indexPath.section {
            case 0:
                if responce.level == Level.one {
                    switch indexPath.row {
                    case 0:
                        if responce.category == Category.auto {
                            cell.textLabel?.text = "Авто: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    case 1:
                        if responce.category == Category.book {
                            cell.textLabel?.text = "Книги: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    default:
                        if responce.category == Category.film {
                            cell.textLabel?.text = "Фильмы: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    }
                }
            case 1:
                if responce.level == Level.two {
                    
                    switch indexPath.row {
                    case 0:
                        if responce.category == Category.auto {
                            cell.textLabel?.text = "Авто: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    case 1:
                        if responce.category == Category.book {
                            cell.textLabel?.text = "Книги: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    default:
                        if responce.category == Category.film {
                            cell.textLabel?.text = "Фильмы: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    }
                }
            default:
                if responce.level == Level.three {
                    
                    switch indexPath.row {
                    case 0:
                        if responce.category == Category.auto {
                            cell.textLabel?.text = "Авто: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    case 1:
                        if responce.category == Category.book {
                            cell.textLabel?.text = "Книги: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    default:
                        if responce.category == Category.film {
                            cell.textLabel?.text = "Фильмы: \(responce.points) из \(responce.pointsOf) /\(responce.statusTest)/"
                            cell.detailTextLabel?.text = dateFormat(date: responce.date)
                        }
                    }
                }
            }
        }
        
        return cell
    }
    
    // MARK: - Private methods
    private func setUI() {
        navigationController?.navigationBar.shadowImage = UIImage()
        tableView.separatorColor = tableView.backgroundColor
    }
    
    private func dateFormat(date: Date) -> String {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "dd.MM.yyyy HH:mm"
        let formattedDate = format.string(from: date)
        
        return formattedDate
    }
}


extension ResultTableViewController: NewResultViewControllerDelegate {
    public func saveResult(_ result: Result) {
        responces.append(result)
    }
}
