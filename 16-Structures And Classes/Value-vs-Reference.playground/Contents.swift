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
 # Value Types and Reference Types
 ![val-ref](val-ref.png)
 */
struct PositionValue {
    var x = 0.0
    var y = 0.0
}

class PositionObject {
    var x = 0.0
    var y = 0.0
}

var v = PositionValue()
var o = PositionObject()

var v2 = v // 복사
var o2 = o // 참조

v2.x = 12
v2.y = 34

v
v2

// 복사된 것이므로 두 객체는 다른 객체, 따라서 속성값도 각각 가짐


o2.x = 12
o2.y = 34

o
o2

// 참조되는 객체이므로 속성값을 공유함


// 그렇다면 언제 구조체, 언제 클래스로 구현해야 할까

// 일반적인 규칙

// - 객체지향 프로그래
// 대부분 참조형식인 클래스로 구현
// 연관된 상수그룹을 표현할 때는 열거형
// 코드 내에서 한번만 사용되는 형식은 튜플
// 나머지 값형식은 구조체 : 상대적으로 적은 데이터를 저장하고 상속이 필요하지 않은 경우, 값 전달 시점마다 복사본이 필요한 경우 값형식인 구조체

// - 함수형, 프로토콜 지향 프로그래밍
// 주로 구조체로 구현
// 상속이나 참조 전달 필요시에만 클래스로 구현
