//
//  File.swift
//  
//
//  Created by Ankush Mittal on 19/12/22.
//

import Foundation

/// An extension for shuffling an imutable collection of elements.
public extension Collection {
    /// Returns a shuffled array.
    func shuffled() -> [Iterator.Element] {
        var array = Array(self)
        array.shuffle()
        return array
    }
}

/// An extension for shuffling a mutable collection of elements.
public extension MutableCollection {
    /// Shuffles elements in a random order.
    mutating func shuffle() {
        var i = startIndex
        var n = count
        
        while n > 1 {
            let j = index(i, offsetBy: random(n))
            swapAt(i, j)
            formIndex(after: &i)
            n -= 1
        }
    }
}
