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
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */
"a" == "a"

struct Point {
    var x = 0.0
    var y = 0.0
}

let p1 = Point(x: 12, y: 34)
let p2 = Point(x: 67, y: 89)

//p1 == p2 // 컴파일러는 내가 만든 구조체를 어떻게 비교해야하는지 모르기 때문에 오류가 발생한다.
// 비교에 대한 연산메소드를 내가 구현해주어야 한다.
/*
 이때 주의해야 할 점,
 1. 기존 연산자가 가진 우선순위와 결합규칙을 바꾸지 않음
 2. 원래 기능과 동일하거나 비슷하도록 구현해야 함
 3. 이미 존재하는 연산자의 파라미터와 리턴형을 일치시켜야 함
 4. 삼항연산과 할당연산은 적용 불가하다.
 */

extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool{
        // 파라미터 형식을 point로 선언하면 point 구조체를 비교한다.
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
}

p1 == p2
p1 != p2

// 여기서 50-52번째 줄을 주석처리하더라도 비교 연산 코드에는 오류가 나지않는다.
// 그 이유는 Point 구조체의 속성은 Double 형식으로 선언되어 있는데,
// Double은 equalTo 연산으로 비교가 가능하다. 즉, Equatable 프로토콜을 채용하고 있다.
// 이런 경우는 컴파일러가 자동으로 연산에 대해 추가한다.

extension Point {
    // prefix를 선언하면 전치연산자를 의미
    static prefix func -(pt: Point) -> Point {
        return Point(x: -pt.x, y: pt.y)
    }
}

let p3 = -p1
p3.x
p3.y

extension Point {
    // postfix를 선언하면 후치연산자를 의미. 연산 도중에 현재 값을 바꿔야하기 때문에 파라미터를 입출력 파라미터로 선언한다.
    static postfix func ++(pt: inout Point) -> Point {
        let ret  = pt
        pt.x += 1
        pt.y += 1
        return ret
    }
}

var p4 = Point(x: 1.0, y: 2.0)
let p5 = p4++
p5.x
p5.y

// p4에는 1씩 증가된 값이 저장되어 있다.
p4.x
p4.y
