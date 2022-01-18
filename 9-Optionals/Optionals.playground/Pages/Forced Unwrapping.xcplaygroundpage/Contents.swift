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

//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */
var num: Int? = nil
print(num)

num = 123
print(num) // 123이 아닌 Optional로 감싸진 값이 출력된다.

let n = 123
print(n) // 논옵셔널은 저장된 값만 출력된다.

// 옵셔널은 특별한 방식으로 값이 저장된다. 자세한 내부구조는 다음 강의에서 공부하고, 옵셔널을 벗기는 것을 unwrapping이라고 한다.
/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */
// 강제 추출
// Optional표현식 뒤에 느낌표!를 붙이면 강제 추출을 할 수 있다.

print(num)
print(num!)

num = nil
print(num)
//print(num!) // 값이 없는 상태 nil을 unwrapping하면 에러가 발생한다.

// 이때문에 forced unwrapping시에는 값이 있는지 확인하는 과정을 반드시 거쳐야 한다.
if num != nil {
    print(num!)
}

num = 123
let before = num
let after = num!

// 실제 프로그래밍에서 강제추출은 웬만하면 사용하지 않는 것이 좋다.
// unwrapping한 값을 저장하면 논옵셔널 타입으로 결과가 리턴된다.
