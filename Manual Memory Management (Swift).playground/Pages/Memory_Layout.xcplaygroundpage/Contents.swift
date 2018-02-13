//: [Previous](@previous)

import Foundation

struct Point {
    let x: Double
    let y: Double
    let isFilled: Bool
}

print(MemoryLayout<Point>.size)
print(MemoryLayout<Point>.stride)
print(MemoryLayout<Point>.alignment)

let count = 4
let pointPointer = UnsafeMutableRawPointer.allocate(
    bytes: count * MemoryLayout<Point>.stride,
    alignedTo: MemoryLayout<Point>.alignment)
//: [Next](@next)
