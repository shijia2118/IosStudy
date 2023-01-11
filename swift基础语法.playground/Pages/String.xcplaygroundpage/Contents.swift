//: [Previous](@previous)

import Foundation

var str1 = "Hello"
var str2 = "World"

// 字符串拼接
print(str1+" "+str2)

// 字符串追加
str1.append("jia")
print(str1)

// 字符串格式化
let formatStr1 = String(format: "书法课价格:%f", 3000.0)
print(formatStr1)
let formatStr2 = String(format: "测试Float:%f", 1.00)
print(formatStr2)

// 字符串长度
print("字符串\(str1)的长度为：\(str1.count)")

// 判断是否为空
print("字符串\(str1)为空吗:\(str1.isEmpty)")

// 判断字符串是否包含另一个字符串
var containersStr1 = "abcde"
var containersStr2 = "cd"
var isContainer = containersStr1.contains(containersStr2)
print("containersStr1包含containersStr2:\(isContainer)")

// 字符串切割
var splitStr = "ab cd e"
print("切割后的字符串:\(splitStr.split(separator: " "))")

// 字符串拼接
var joinStrs = ["ab","cd","ef"]
var joinStr = joinStrs.joined()
print("拼接后的字符串:\(joinStr)")
//或者
joinStr = joinStrs.joined(separator: ",")
print("拼接后的字符串:\(joinStr)")

// 字符串截取
var subString1 = "abcdefg;,"
let prefix = subString1.prefix(2) //截取前2位
print(prefix)
let suffix = subString1.suffix(2) //截取后2位
print(suffix)
let index3 =  subString1.index(subString1.startIndex, offsetBy: 3)
let index5 = subString1.index(subString1.startIndex,offsetBy: 6)
print(subString1[index3...index5]) //截取从第3位到第6位字符串
let range = subString1.range(of: "cde")!
let lowerBound = range.lowerBound //字符串"cde"中的下限字符“c"在字符串中的索引
let upperBound = range.upperBound //字符串"cde"中的上限字符"e"的下一个字符，在字符串中的索引
print(subString1[lowerBound...upperBound]) //cdef
print(subString1[range]) //cde
print("\(subString1[subString1.startIndex..<range.lowerBound])")
print("\(subString1[subString1.startIndex..<range.upperBound])")

// 字符串替换
var replaceStr = "Hello world"
let str = replaceStr.replacingOccurrences(of: "ll", with: "oo")
print(str)

// 字符串插入
var insertStr = "ABCDEFGH"
insertStr.insert("X", at: insertStr.index(insertStr.startIndex,offsetBy: 5)) //插入单个字符
print(insertStr)
var insertStr2 = "abcdefgh"
insertStr2.insert(contentsOf: "ooo", at: insertStr2.index(before: insertStr2.endIndex))
print(insertStr2)



// 遍历字符串
for char in str1 {
    print(char)
}

// 删除指定位置字符
var removeStr = "abcdefg"
removeStr.remove(at: removeStr.index(removeStr.startIndex,offsetBy: 3))
print(removeStr)
// 删除首字母
var rmFirstChar = "abcd"
rmFirstChar.removeFirst()
print(rmFirstChar)
// 删除最后一个字母
var rmLastChar = "abcd"
rmLastChar.removeLast()
print(rmLastChar)
// 删除所有字母
var rmAllChar = "abcde"
rmAllChar.removeAll()
print("删除所有字母后:\(rmAllChar)")
// 删除指定位数（从头开始计）的字符串
var rmStartStr = "abcde"
rmStartStr.removeFirst(2)
print("从头开始算，abcde删除2位字符后:\(rmStartStr)")
// 删除指定位数（从尾开始计）的字符串
var rmEndStr = "abcde"
rmEndStr.removeLast(2)
print("从尾开始算,abcde删除2位字符后:\(rmEndStr)")


