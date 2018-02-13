//: [Previous](@previous)

import Foundation

var array = [1,2,3,4,5,6,7,8,9,0]

let bufferPointer = UnsafeBufferPointer(start: array, count: array.count)
for (index, value) in bufferPointer.enumerated() {
    print("value \(index): \(value)")
}

//: [Next](@next)
