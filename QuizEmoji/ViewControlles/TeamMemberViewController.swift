//
//  TeamMemberViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class TeamMemberViewController: UIViewController {
    
    var teamInfoForLabel: TeamMember!
    
    @IBOutlet var personFotoLabel: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var loginGitHubLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        personFotoLabel.layer.cornerRadius = 15
        personFotoLabel.image = UIImage(named: teamInfoForLabel.name)
        
        nameLabel.text = teamInfoForLabel.name
        emailLabel.text = teamInfoForLabel.email
        loginGitHubLabel.text = teamInfoForLabel.loginGitHub
        positionLabel.text = teamInfoForLabel.position
    }
}
