//
//  TeamTableViewController.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

import UIKit

class TeamTableViewController: UITableViewController {
    
    var infoTeam = TeamMember.getTeam()

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        infoTeam.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellTeam", for: indexPath)
        cell.textLabel?.text = infoTeam[indexPath.row].name
        cell.detailTextLabel?.text = infoTeam[indexPath.row].position
        cell.imageView?.image = UIImage(named: infoTeam[indexPath.row].name)
        return cell
    }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         guard let indexPath = tableView.indexPathForSelectedRow else { return }
         let personInfo = segue.destination as! TeamMemberViewController
         personInfo.teamInfoForLabel = infoTeam[indexPath.row]
    }

}
