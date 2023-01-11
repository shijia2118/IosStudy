//: [Previous](@previous)

import Foundation

/*
 *  常规形式:
 *   { (parameters) -> return type in
 *       statements
 *   }
 */

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// 完整写法
//let by = {(s1:String,s2:String) -> Bool in
//    return s1 > s2
//}
// 简写
//let by = {s1,s2 in
//    return s1 > s2
//}
// 更简写
//let by = {$0 > $1}
// 最简
var reversedNames = names.sorted(by: >)
print(reversedNames)


/*
 * 尾随闭包:
 * 是一个被书写在函数调用括号外面(后面)的闭包表达式
 * 如果一个很长的闭包表达式作为一个函数的 最后一个实参，使用尾随闭包可以增强程序的可读性
 */
//var result = names.sorted(){$0 > $1}
//或
var result = names.sorted{$0 > $1}
print(result)

/**
 * 如果函数只有一个参数，且类型是函数类型，可以省略括号
 */
func add(fn: (Int,Int) -> Int){
    print(fn(3, 2))
}
add{$0 * $1}
//或省略掉参数
add{ _,_ in 10 }  //省略掉参数，固定返回10

