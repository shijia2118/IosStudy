//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

// 1.闭区间运算符
for index in 1...5 {
    print(index)
}

print("\n")

// 2.半开区间运算符
for index in 1..<5 {
    print(index)
}

print("\n")

// 3.单侧区间
let names = ["Anna", "Alex", "Brian", "Jack","aa","cc"]
for name in names[...3] {
    print(name)
}
print("\n")
for name in names[1...] {
    print(name)
}

