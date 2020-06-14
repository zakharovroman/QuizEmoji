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
    let position: String
}

extension TeamMember {
    
    static func getTeam() -> [TeamMember] {
        return [
            TeamMember(
                name: "Roman Zaharov",
                email: "zrv14287@yandex.ru",
                loginGitHub: "zakharovroman",
                position: "Team lead"),
            
            TeamMember(
                name: "Angela",
                email: "angela.pikulina@gmail.com",
                loginGitHub: "AnzhelikaP",
                position: "ios developer"),
            
            TeamMember(
                name: "Roman",
                email: "lr.mos@mail.ru",
                loginGitHub: "romcha1",
                position: "ios developer"),
            
            TeamMember(
                name: "Vlad",
                email: "vladchere.ok@mail.ru",
                loginGitHub: "Vladchere",
                position: "ios developer")
            
//            TeamMember(
//            name: "Andrey",
//            email: "Kryukov.ios@yandex.ru",
//            loginGitHub: "???",
//            Position: "ios developer")
        ]
    }
}
