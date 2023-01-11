//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*
 * 创建空字典
 * 输出结果:[:]
 */
// 1.[Int:String]
var emptyDic1 = [Int:String]()
print(emptyDic1)
// 2.Dictionary<Int,String>
var emptyDic2 = Dictionary<Int,String>()
print(emptyDic2)
// 3.[:]
// 注意：这种写法因为没有指定key,value的类型，所以
// 必须先指定类型。
var emptyDic3:[Int:String] = [:]
print(emptyDic3)

/**
 * 声明具有某些值的字典
 */
// 1.直接列出
var valueDic = [1:"one",2:"tow"]
print(valueDic)

// 2.通过2个数组创建
var l1 = [1,2,5]
var l2 = ["one","tow","three"]
var dic = Dictionary(uniqueKeysWithValues: zip(l1, l2))
print(dic)


/*
 * 添加元素
 */
var addDic = Dictionary<String,String>()
addDic["name"] = "json"
print(addDic)


/**
 * 删除元素
 */
var deleteDic = ["name":"json","sex":"male","age":"28"]
//删除字典中某一个元素
// 方法1
//deleteDic.removeValue(forKey: "name")
// 方法2
//deleteDic.remove(at: deleteDic.index(forKey: "sex")!)
// 方法3
deleteDic["name"] = nil
//删除字典所有元素
//deleteDic.removeAll()
print(deleteDic)


/*
 * 修改字典
 */
var editDic = ["name":"json","sex":"male","age":"28"]
// 方法1:
editDic["name"] = "lilei"
print(editDic)
// 方法2:
editDic.updateValue("hong", forKey: "name")
print(editDic)


/*
 * 访问字典
 */
var queueDic = [1:"one",2:"tow",3:"three"]
print(queueDic[2]!)



/**
 * 遍历字典
 */
var iterateDic = ["name":"json","age":"29","sex":"male","height":"178"]
for (key,value) in iterateDic {
    print("key:\(key);value:\(value)")
}

//字典索引
for (key,value) in iterateDic.enumerated() {
    print("\(value)对应的索引:\(key)")
}
