//: [Previous](@previous)

import Foundation

/****************************************************************/

var foo2 = UnsafeMutablePointer<UInt8>.allocate(capacity: 1)
foo2.deallocate(capacity: 1)

/****************************************************************/

var foo3 = UnsafeMutablePointer<UInt>.allocate(capacity: 4)
foo3.initialize(from: 1...4)
print("(foo3+0).pointee=\((foo3+0).pointee)")
print("(foo3+1).pointee=\((foo3+1).pointee)")
print("foo3[2].pointee=\((foo3[2]))")
print("foo3[3].pointee=\((foo3[3]))")
foo3.deallocate(capacity: 4)

//: [Next](@next)
