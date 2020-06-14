//
//  TabBarViewController.swift
//  QuizEmoji
//
//  Created by 1 on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let viewControllers = viewControllers else {return}
        for vc in viewControllers {
            if vc is ResultTableViewController {
                print("Set delegate NewResultViewControllerDelegate")
                //refResultTableViewController = vc as! ResultTableViewController
            }
        }
    }

}
