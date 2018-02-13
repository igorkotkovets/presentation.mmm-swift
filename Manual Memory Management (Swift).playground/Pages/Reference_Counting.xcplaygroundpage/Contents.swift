//: [Previous](@previous)

import Foundation

let bytesPointer = UnsafeMutableRawPointer.allocate(bytes: 4, alignedTo: 1)
bytesPointer.storeBytes(of: 0xFFFF_FFFF, as: UInt32.self)

// Load a value from the memory referenced by 'bytesPointer'
let x = bytesPointer.load(as: UInt8.self)       // 255
print(x)

// Load a value from the last two allocated bytes
let offsetPointer = bytesPointer + 2
let y = offsetPointer.load(as: UInt16.self)     // 65535
print(y)

//: [Next](@next)
