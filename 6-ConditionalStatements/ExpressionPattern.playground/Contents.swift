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
 # Expression Pattern
 */

// Interval Matching을 사용하는 간단한 코드
let a = 1
switch a{
case 0...10:
    print("0 ~ 10")
default:
    break
}


/*:
 ## Pattern Matching Operator
 ````
 a ~= b
 ````
 */

struct Size {
    var width = 0.0
    var height = 0.0
    
    
    // 매턴매칭 연산자를 오버로딩 해주자 :0
    // 첫번째 파라미터: 케이스 키워드 뒤에 오는 패턴의 자료형: Range<Int> // 에러메세지에서도 볼 수 있다!
    // 두번째 파라미터: 스위치 키워드 뒤에 오는 자료형: Size
    static func ~=(left: Range<Int>, right: Size) -> Bool{
        return left.contains(Int(right.width)) // Range에 Size::width의 값이 포함되어 있으면 true를 반환하여 해당 케이스문이 실행된다~!~!~!
    }
}

let s = Size(width: 10, height: 20)

switch s {
case 1..<9: // 범위와는 패턴 매칭할 수 없어서 오류가 난다! => 패턴매칭 연산자를 Size struct에 오버로딩한다.
    print("1~9")
case 10..<99:
    print("10~99")
default:
    break
}

