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

print("Converting raw pointers to typed pointers")
let count = 2
let stride = MemoryLayout<Int>.stride
let alignment = MemoryLayout<Int>.alignment
let byteCount = stride * count
let rawPointer = UnsafeMutableRawPointer.allocate(bytes: byteCount, alignedTo: alignment)
defer {
    rawPointer.deallocate(bytes: byteCount, alignedTo: alignment)
}

let typedPointer = rawPointer.bindMemory(to: Int.self, capacity: count)
typedPointer.initialize(to: 0, count: count)
defer {
    typedPointer.deinitialize(count: count)
}

typedPointer.pointee = 42
typedPointer.advanced(by: 1).pointee = 6
typedPointer.pointee
typedPointer.advanced(by: 1).pointee

let bufferPointer = UnsafeBufferPointer(start: typedPointer, count: count)
for (index, value) in bufferPointer.enumerated() {
    print("value \(index): \(value)")
}

//: [Next](@next)
