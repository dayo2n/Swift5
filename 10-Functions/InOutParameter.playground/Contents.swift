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
 # In-Out Parameters
 */
// 입출력 파라미터

var num1 = 12
var num2 = 34

//func swapNumber(_ a: Int, with b: Int){
////    var tmp = a
////    a = b
////    b = tmp
//    // 파라미터는 상수이므로 함수의 바디 안에서 값을 초기화하는 것이 불가능하다!
//    // 이런 방식으로는 스왑할 수 없다..
//}
//
//swapNumber(num1, with: num2)
/*:
 ## Syntax
 ![inout-def](inout-def.png)
 ![inout-call](inout-call.png)
 */
num1
num2


// 파라미터를 입출력 파라미터로 바꿔주면 오류가 나지 않는다!
func swapNumber(_ a: inout Int, with b: inout Int){ // 기본값을 선언할 수 없다!
    let tmp = a
    a = b
    b = tmp
}

//swapNumber(num1, with: num2)
//error! Passing value of type 'Int' to an inout parameter requires explicit '&'
// 입출력 파라미터로 argument를 전달할 때는 반드시 &를 붙여야한다.

swapNumber(&num1, with: &num2)
num1
num2
// copy-in: 변수가 저장된 값을 복사하여 전달한다. num1 -> a
// copy-out: a -> num1. 변경된 값이 다시 복사되어 전달된다. b(num2)의 경우도 마찬가지이다.

//swapNumber(&num1, with: &num1) // 같은 값을 전달하는 것은 불가능하다. 의미도 없다.


// 상수를 인자로 전달하는 것도 안된다. compile error!
let a = 12
let b = 34
//swapNumber(&a, with: &b) // 상수는 값을 변경할 수 없어 copy out이 불가능하다


// 리터럴을 직접 전달하는 경우?
//swapNumber(&12, with: &34) // 리터럴은 메모리공간을 차지하지 않아 복사할 메모리 공간이 없다.


// 가변파라미터를 입출력 파라미터로 선언해보면 문법적으로 불가능하다는 메시지를 볼 수 있다!
//func sum(of nums: inout nums...){
//    
//}
