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
import UIKit
import Foundation

/*:
 # Comparing Arrays
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b

a.elementsEqual(b)

a.elementsEqual(b) { (lhs, rhs) -> Bool in
    return lhs.caseInsensitiveCompare(rhs)
    == .orderedSame
}

/*:
 # Finding Elements
 */

let nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

nums.contains(2)
nums.contains(8)

nums.contains { (n) -> Bool in
    return n % 2 == 0
}

// 가장 처음에 검색된 요소의 값을 반환
nums.first { (n) -> Bool in
    return n % 2 == 0
}


// r가장 처음에 검색된 요소의 인덱스를 반환
nums.firstIndex{ (n) -> Bool in
    return n % 2 == 0
}

nums.firstIndex(of: 1)
nums.lastIndex(of: 1)

/*:
 # Sorting on Array
 */

nums.sorted()
nums

nums.sorted{ (a, b) -> Bool in
    return a > b
}

nums.sorted().reversed() // 배열이 아니라 컬렉션을 리턴, 배열을 생성하고 싶으면 배열 생성자를 지정
[Int] (nums.sorted().reversed())


// 가변 배열을 정렬해보자
var mutableNums = nums

mutableNums.sort()
mutableNums.reverse()

mutableNums
mutableNums.swapAt(0, 1)
mutableNums.shuffle() // 요소의 순서가 랜덤으로 바뀜
