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
import Foundation

/*:
 # Optional Binding
 */
// 지난내용 정리
var num: Int? = nil

if num != nil {
    print(num!)
}
// 그러나 이렇게 코드를 작성하는 경우는 거의 없고 이번 시간에 공부할 옵셔널 바인딩을 이용한다.




/*:
 ## Syntax
 ![optional-binding-syntax](optional-binding-syntax.png)
 */

// if, while, guard문에서 이용한다.

// 괄호 이전까지의 코드를 ```바인딩```이라고 하자.
// example) if let name: Type = OptionalExpression

// 옵셔널표현식을 평가한다. 값이 리턴이 되면 언래핑되어 변수 또는 상수에 저장되어 리턴되고 코드를 실행한다. guard에서는 else가 아닌 else 블록 다음의 코드를 실행한다.
// 옵셔널 표현식을 평가했는데 nil이 리턴되었다면 바인딩이 실패한 것이다. 다음문장으로 제어를 넘긴다. guard에서는 else문 내의 코드를 실행한다.

if num != nil {
    print(num!)
}else{
    print("empty")
}

// 타입은 형식추론이 가능하므로 보통 생략한다.
if let n = num { // 컨디션이 아닌 바인딩.
    print(n) // 강제추출할 필요가 없다. 이미 추출된 값이므로 또 다시 강제추출할 수 없다.
    n // 언래핑 후의 값을 저장하므로 논옵셔널 타입으로 리턴된다.
}else{
    print("empty")
}

// 추가로 바인딩에 사용하는 상수 또는 변수의 이름을 다른 스코프에 있는 것과 동일하더라도 그 둘이 같은 변수를 의미하는 것은 아니므로 바인딩, 가드문에서는 혼동에 유의하여야 한다.
var str: String? = "str"
guard let str = str else {
    fatalError()
}
str

num = 123
if var num = num {
    print(num)
    num = 456
    print(num)
}

// 한 번에 여러 변수를 바인딩하자. 열거를 이용하자!
let a: Int? = 12
let b: String? = "str"

if let num = a, let str = b, str.count > 5 { // 모든 바인딩이 성공해야한다. 앞서 바인딩한 변수를 이용할 수도 있다.
    
}

































