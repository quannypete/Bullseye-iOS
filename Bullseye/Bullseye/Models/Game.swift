//
//  Game.swift
//  Bullseye
//
//  Created by Quanny Hampton on 9/16/24.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    
    func point(slidervalue: Int) -> Int {
        100 - abs(target - slidervalue)
    }
}
