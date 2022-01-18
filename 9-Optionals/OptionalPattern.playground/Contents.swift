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
 # Optional Pattern
 */

//Optional // ctrl + cmd + click -> optional이 구현되어 있는 곳으로 이동!

let a: Int? = 0 // 단축문법

let b: Optional<Int> = 0 // 정석 문법. 이론적으로만 알아도 된다.

// *********
if a == nil { // 단축문법
    
}
if a == .none { // 정석
    
}

// *********
if a == 0 {
    
}
if a == .some(0){
    
}

// optional이 열거형으로 구현되어 있고, none 또는 some 케이스가 있다는 점을 알 수 있다!
// => enumeration case pattern과 optional pattern을 조합하여 활용할 수 있다!


if let x = a {
   print(x)
}
// 위 코드를 enumeration case pattern으로 작성해보자
if case .some(let x) = a {
   print(x)
}
// enumeration case pattern으로 작성할 수 있다면 optional pattern도 적용할 수 있다.
if case let x? = a {
   print(x)
}


let list: [Int?] = [0, nil, nil, 3, nil, 5]

for item in list {
   guard let x = item else { continue } // nil이 들어오면 continue
   print(x)
}

// 결과는 동일하지만 guard문을 작성하지 않아도 되므로 간단해진다.
for case let x? in list {
   print(x)
}
