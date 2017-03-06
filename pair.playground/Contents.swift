//: Playground - noun: a place where people can play

import UIKit
import Foundation

//we have 10 users and we want to match them into groups

extension Array
{
    mutating func shuffle()
    {
        for _ in 0..<10
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}


var arr = ["shaggy","amarachinzekwe","dewunmi","djubreel","tundeojediran","judekayode","mfdamilola","ollaollu","perfectmak","simpumind"]

arr.shuffle()

let output = stride(from: 0, to: arr.count - 1, by: 2).map {
    (arr[$0], arr[$0+1])
}


