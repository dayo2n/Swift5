//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//
import Foundation
import os

/*:
 # Syntax Optimization
 */
// 스위프트의 문법 최적화 :: 문법을 최대한 단순하게 작성하는 것을 선호한다.

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone Xs", "iPhone Xr", "iPhone 8", "iPhone 7",
   "AirPods",
   "Apple Watch Series 4", "Apple Watch Nike+"
]

// 정식 문법 1
var proModels = products.filter({ (name: String) -> Bool in
    return name.contains("Pro")
})

// 문법1을 최적화해보자
products.filter({
    // (1) 파라미터 형식과 리턴형을 생략 가능: 클로저를 통해 추론이 가능하므로,
    // 따라서 파라미터의 이름과 in을 모두 지우고
    
    $0.contains("Pro")
    // (2) short hand argument 형태로 리턴
    // SHORT HAND ARGUMENT: 첫 아규먼트는 $0, 두번째는 $1, ...
    // (3) implicit return 형태이다. 리턴 키워드가 생략된 상태.
})

// (4) inline에서 trailing closure로
products.filter(){
    $0.contains("Pro")
}

// (5) 괄호 생략
products.filter {
    $0.contains("Pro")
}

//끝!


// ---------------------------------------------------------------

// 정식 문법 2
proModels.sort(by: { (lhs: String, rhs: String) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedAscending
})

// (1) 파라미터 형식과 리턴형 생략
// (2) short-hand argument 사용
proModels.sort(by: {
    return $0.caseInsensitiveCompare($1) == .orderedAscending
})

// (3) implicit return 사용
proModels.sort(by: {
    $0.caseInsensitiveCompare($1) == .orderedAscending
})

// (4) inline closure to trailing closure
proModels.sort() {
    $0.caseInsensitiveCompare($1) == .orderedAscending
}

// (5) 괄호 생략
proModels.sort{
    $0.caseInsensitiveCompare($1) == .orderedAscending
}
