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
 # Enumerations
 ![enum](enum.png)
 */

// Enum을 사용하지않았을 때의 문제점?
// 문단을 정렬한다고 가정해보자
//let left = 0
//let center = 1
//let right = 2
//
//var alignment = center

// 1. 값의 가독성을 높여보자
let left = "left"
let center = "center"
let right = "right"

var alignment = center

// 문자열이기 때문에 오타 발생의 위험이 있고, uppercase도 구분됨

if alignment == "Center" {
    // 대문자이기 때문에 center로 의도해 정렬했더라도 실행되지않음
}

/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */


enum Alignment {
    case left
    case right
    case center
}

Alignment.center

var textAlignment = Alignment.center

textAlignment = .left // 앞에서 열거형으로 정의했기 때문에 추론되어 dot만으로 값 접근가능

//textAlignment = .justify // 선언하지않은 값을 초기화하면 에러발생
//textAlignment = .Left // 가독성과 안전성이 모두 향상됨


if textAlignment == .center {
    
}


switch textAlignment {
case .left:
    print("left")
case .right:
    print("right")
case .center:
    print("center")
    // 열거형에 선언된 값에 대해 case를 모두 다뤘으므로 default 블록은 필요없음
}
