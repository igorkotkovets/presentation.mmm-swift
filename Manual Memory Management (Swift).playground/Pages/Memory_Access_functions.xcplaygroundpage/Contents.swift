//: [Previous](@previous)

import Foundation

var foo = 5
withUnsafeMutablePointer(to: &foo) { (ptr: UnsafeMutablePointer<Int>) -> Void in
    ptr.pointee = 10
}
print("foo is \(foo)")

//: [Next](@next)
