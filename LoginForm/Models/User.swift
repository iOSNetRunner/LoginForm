//
//  User.swift
//  LoginForm
//
//  Created by Dmitrii Galatskii on 13.05.2023.
//

struct User {
    let username: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(username: "Johnny",
             password: "qwe",
             person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let lastname: String
    let age: Int
    let hobbies: String
    let country: String
    let city: String
    let profileImage: String
    let bio: String
    
    static func getPerson() -> Person {
        Person(name: "Johnny",
               lastname: "Silverhand",
               age: 34,
               hobbies: "fighting for justice",
               country: "USA",
               city: "Night City",
               profileImage: "johnnyImage.png",
               bio: """
               Johnny Silverhand, born Robert John Linder, was a famous influential rockerboy and the lead singer of the band Samurai before its breakup in 2008. A military veteran who defined the rockerboy movement to what it is today, he was the most prominent figure that fought against the corrupted NUSA government and megacorporations, often being described as a terrorist. Despite being charismatic and quite the charmer Johnny is also known to be irrational, impulsive, and a manipulator.
               
               Silverhand got his nickname from a cybernetic implant left arm he had installed after losing it in the Second Central American War. One of the early (and most probable) victims of cyberpsychosis, he then became very temperamental and \"on the edge\". He was described as driven by \"dedication and ambitions, but at the end of the day he doesn't care much for the people around him as long as they are used to accomplish his goals\" in one interview.
               """)
    }
}
