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


// 스위프트가 제공하지않는 새로운 연산자를 직접 구현해보자
/*:
 # Custom Operators
 ![operator](operator.png)
 
 ### Reserved Tokens
 (, ), {, }, [, ], ., ,, :, ;, =, @, #, &(prefix operator), ->, `, ?, !(postfix operator), \/*, *\/
 
 ### First Character
 /, =, -, +, !, *, %, <, >, &, |, ^, ?, ~
 
 ![custom-operator](custom-operator.png)
 */*/
/*
 연산자 선언은 모든 스코프에서 인식할 수 있도록 항상 글로벌에서 선언한다.
 가장 먼저 연산자의 위치를 선언한다: prefix, postfix, infix

 예약어는 단독으로 사용하여 만들 수 없고 다른 문자와 조합해야한다.
 
 연산자는 First Character의 문자들이나 유니코드에 해당하는 문자들로 시작해야한다.
 코드의 가독성을 위해 위에 나열된 문자로 시작하는 것이 좋다.

 * 주의해야 할 규칙
 1. 연산자를 가능한 단순한 형태로 선언하라.
 2. 기존에 있는 연산자와 함께 사용할 때 모호함이 없어야 한다.
*/

/*이번에는 operator 부분에 앞서 선언한 새 연산자를 써야한다.*/

prefix operator +++

extension Int {
    static prefix func +++(num: inout Int) {
        num += 2
    }
}

var a = 1
+++a
a

precedencegroup MyPrecedence {
    higherThan: AdditionPrecedence
}

//infix operator *+*: MultiplicationPrecedence // 여기서 우선순위를 지정해준다. 곱하기와 같은 우선순위를 가짐.
infix operator *+*: MyPrecedence
extension Int {
    static func *+*(left: Int, right: Int) -> Int {
        return (left * right) + (left * right)
    }
}

1 *+* 2
//1 *+* 2  + 3 // 인접한 연산자 간 우선순위가 지정되어 있지않아 오류가 난다!

// 이번에는 우선순위를 선언해보자!
/*:
 # Precedence Groups
 ![precedence-group](precedence-group.png)
 
 [Operator Declarations]:
 https://developer.apple.com/documentation/swift/operator_declarations "Operator Declarations"
 
 [Operator Declarations]
 
 ![precedence-group-syntax](precedence-group-syntax.png)
 
 ![precedence-group-declaration](precedence-group-declaration.png)
 */

// 선언시점에 적절한 우선순위를 지정한다.

1 *+* 2  + 3

// 새로운 우선순위 그룹을 만들어보자.
// 세가지 필드는 생략될 수 있지만, higherThan이나 lowerThan 중에 하나는 선언되어야 한다.
