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
//: [Previous](@previous)

import Foundation

/*:
 # Array Basics
 ## Creating an Array
 */

let nums = [1, 2, 3]
let emptyArray : [Int] = [] // vacant literal : 형식 추론 불가, 타입 지정 필요

let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

let zeroArray = [Int](repeating: 0, count: 10) // 0이 10개가 채워진 정수 배열이 생성 됨

/*:
 ## Inspecting an Array
 */

nums.count

nums.count == 0

nums.isEmpty
emptyArray.isEmpty


/*:
 ## Accessing Elements
 */

let fruits = ["Apple", "Banana", "Melon"]

fruits[0]

fruits[2]

fruits[0...1]

fruits[fruits.startIndex]

//fruits[fruits.endIndex] // error! endIndex는 정말 마지막 인덱스가 아니다. 인덱스는 0부터 시작하므로
fruits[fruits.endIndex - 1]
fruits[fruits.index(before: fruits.endIndex)]

fruits.first
fruits.last
//emptyArray[0] // error! array is vacant
