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
 # Value Types & Reference Types
 */

struct SizeValue { // 구조체는 값형식
   var width = 0.0
   var height = 0.0
}

var value = SizeValue()
// 인스턴스를 생성하면 스택에 메모리공간이 생성되어 저장됨


var value2 = value // 속성의 값을 복사해 새로운 메모리에 저장됨 -> value와 value2는 서로 다른 공간에 저장됨
value2.width = 1.0
value2.height = 2.0

value
value2
// 인스턴스 속성의 값은 다름


class SizeObject { // 클래스는 참조형식
   var width = 0.0
   var height = 0.0
}

var object = SizeObject()
// 스택과 힙에 새로운 공간이 생성된다. 힙에는 인스턴스가 저장되고, 스택에는 인스턴스가 가리키는 힙 메모리 주소가 저장된다.

var object2 = object // 힙에서는 새로운 메모리공간이 생성되거나 접근하지는 않음. 스택에 새로운 메모리 공간이 생성된다.

// 값을 변경할 땐 항상 스택을 거쳐 힙에서 변경된다.
object2.width = 1.0
object2.height = 2.0

object
object2
// 두 개가 같은 주소(인스턴스)를 가리키므로 속성의 값들은 같음




/*
 # keyword let
 */
let v = SizeValue()
// v.width = 1.0 // error! 메모리에 저장된 값을 바꿀 수 없음
// 값 형식을 let 키워드로 선언하면 속성까지 상수로 선언된다.


let o = SizeObject()
o.width = 1.0
o.height = 2.0





/*
 # 비교 연산시
 */
// value type : ==, !=
// Reference Type: ==, != / ===, !==




