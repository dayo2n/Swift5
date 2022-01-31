//: [Previous](@previous)

import Foundation
import os

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

// 이름에 Pro를 포함하는 것만 필터링
var proModels = products.filter({ (name: String) -> Bool
    in
    return name.contains("Pro")
})

print(proModels)

// 대소문자가 구분되어 정렬된다.
print(proModels.sorted())


// 대소문자를 구분하지 않고 정렬하는 클로저 함수를 작성해보자.
proModels.sort(by: {(lhs: String, rhs: String) -> Bool
               in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

print(proModels)

//: [Next](@next)
