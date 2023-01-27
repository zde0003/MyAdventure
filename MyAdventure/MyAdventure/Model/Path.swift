//
//  Path.swift
//  MyAdventure
//
//  Created by Zach Evetts on 1/26/23.
//

import Foundation

struct Path {
    
    init(_ ques: String, _ o_one:String, _ o_two: String, _ ans: String) {
        question = ques
        option_one = o_one
        option_two = o_two
        answer = ans
    }
    
    var question: String
    var answer: String
    var option_one: String
    var option_two: String


}
