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
 # Removing Substrings
 */
var str = "Hello, Awesome Swift!!!"

let lastCharIndex = str.index(before: str.endIndex)

var removed = str.remove(at: lastCharIndex) // remove at: Optional이 아닌 Character를 리턴하므로 잘못된 인덱스를 전달하면 에러 발생
removed
str

removed = str.removeFirst()
removed
str

str.removeFirst(2) // 처음에 있는 두개의 문자를 삭제해준다.
str

str.removeLast()
str

str.removeLast(2)
str

if let range = str.range(of: "Awesome") {
    str.removeSubrange(range)
}
str

str.removeAll() // 파라미터없이 호출하면 메모리공간까지 비워준다!
str

str.removeAll(keepingCapacity: true) // 메모리공간이 삭제되지 않는다 => 불필요한 메모리 오버헤드를 줄여준다!






str = "Hello, Awesome Swift!!!"

// Substring을 리턴 == 원본 문자열의 메모리를 공유한다는 뜻
var substr = str.dropLast()

substr = str.dropLast(3)

substr = str.drop(while: { (ch) -> Bool in return ch != ","})
substr
