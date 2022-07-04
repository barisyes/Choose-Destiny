//
//  Story.swift
//  Choose Destiny
//
//  Created by Barış Yeşilkaya on 3.07.2022.
//

import Foundation

struct Story{
    let text: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(text: String, choice1: String, choice1Destination: Int, choice2: String, choice2Destination: Int) {
        self.text = text
        self.choice1 = choice1
        self.choice1Destination = choice1Destination
        self.choice2 = choice2
        self.choice2Destination = choice2Destination
    }
    
}
