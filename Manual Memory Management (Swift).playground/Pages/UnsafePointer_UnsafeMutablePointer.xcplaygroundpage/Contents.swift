//: [Previous](@previous)

import Foundation

var foo = 5
withUnsafePointer(to: &foo) { (ptr: UnsafePointer<Int>) -> Void in
    ptr.pointee = 10
}
print("foo is \(foo)")

//: [Next](@next)
