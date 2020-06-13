//
//  TeamMember.swift
//  QuizEmoji
//
//  Created by Роман Захаров on 13.06.2020.
//  Copyright © 2020 Роман Захаров. All rights reserved.
//

struct TeamMember {
    let name: String
    let email: String
    let loginGitHub: String
    let Position: String
}

extension TeamMember {
    
    static func getTeam() -> [TeamMember] {
        return [
            TeamMember(
                name: "Roman Zaharov",
                email: "lr.mos@mail.ru",
                loginGitHub: "zakharovroman",
                Position: "Team lead"),
            
            TeamMember(
                name: "Angela",
                email: "lr.mos@mail.ru",
                loginGitHub: "AnzhelikaP",
                Position: "ios developer"),
            
            TeamMember(
                name: "Roman",
                email: "lr.mos@mail.ru",
                loginGitHub: "romcha1",
                Position: "ios developer"),
            
            TeamMember(
                name: "Vlad",
                email: "lr.mos@mail.ru",
                loginGitHub: "Vladchere",
                Position: "ios developer")
        ]
    }
}
