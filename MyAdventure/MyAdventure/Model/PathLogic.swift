//
//  PathLogic.swift
//  MyAdventure
//
//  Created by Zach Evetts on 1/26/23.
//

import Foundation

struct PathLogic {
    
    var pathIndex : Int = 0
    
    let path = [
    Path("Will you take a left or a right?",
        "Left",
        "Right",
        "Left"),
    Path("Will you try to swim across or wait?",
        "Swim",
        "Wait",
        "Wait"),
    Path("Which door will you walk through?",
        "Red",
        "Blue",
        "Blue")
    ]
    
    mutating func compareUserAnswer(_ response: String) -> Bool {
        if response == path[pathIndex].answer {
            increaseIndex()
            return true
        } else {
            return false
        }
    }
    
    mutating func increaseIndex() {
        if pathIndex < path.count - 1 {
            pathIndex += 1
        } else {
            pathIndex = 0
        }
    }
}
