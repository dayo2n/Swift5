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

/*:
 # Substring
 */


let str = "Hello, Swift"
let l = str.lowercased()

var first = str.prefix(1)
//first의 자료형이 string이 아닌 String.SubSequence이다
//String.SubSequence // SubSequence는 SubString의 typealias

// 왜 Substring을 이용해야 할까?
// without substring
/*
 str이 차지하는 메모리공간과 first도 별개의 메모리 공간을 따로 차지한다. (Swift3까지 이 방식)
 */


// with substring
/*
 str이 차지하는 메모리 공간이 있고,
 first는 이전과 달리 새로운 메모리 공간을 차지하지 않고, 원본 스트링의 메모리 공간을 가리킨다.
 first는 스트링이 아닌 substring을 반환한다. (Swift4부터 이 방식을 이용한다.)
 
 그렇다면 값을 변경하면 어떻게 변할까?
 값이 변경되는 시점에는 새로운 메모리 공간을 차지하게 된다! -> 이 부분은 스위프트가 알아서 처리
*/

// 그렇다면 first에 저장된 내용을 변경해보자
first.insert("!", at: first.endIndex) // 이 시점에 새로운 메모리가 생성

str
first
// 원본인 str에는 변경이 적용되지 않는다. "Copy-on-Write Optimization"

let newStr = String(str.prefix(1)) // SubString을 String으로 캐스팅
newStr // newStr은 문자열 형식, 새로운 메모리 공간을 차지하게 된다!

str.substring(to: str.index(str.startIndex, offsetBy: 2)) // 지금은 사용되지 않는 메소드라 warning이 표시됨.
// Deprecated Method : 현재는 사용할 수 있으나 곧 없어질 메소드이므로 사용하지 않아야 한다.

//let s = str[str.startIndex..<str.index(str.startIndex, offsetBy: 2)]
// 코드를 간결하게!
let s = str[..<str.index(str.startIndex, offsetBy: 2)] // one sided range

str[str.index(str.startIndex, offsetBy: 2)...]

let lower = str.index(str.startIndex, offsetBy: 2)
let upper = str.index(str.startIndex, offsetBy: 5)
str[lower...upper]
