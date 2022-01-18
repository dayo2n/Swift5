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


// Java의 do-while과 같다.
// 코드를 먼저 한 번 실행한 다음에 조건을 검사한다.
/*:
 # repeat-while
 
 ## Syntax
 ![repeat-while](syntax-repeat-while.png)
 */

var num = 0
while num < 100 {
    num += 1
}

num

num = 0
repeat {
    num += 1
}while num < 100

num


// 같은 결과가 나왔지만 이 두 while문의 동작구조를 자세히 살펴보면 차이점이 있다.
// 동작구조의 차이를 확인하기 위해 num의 초기값을 100으로 설정하여 다시 실행해본다.

num = 100
while num < 100 {
    num += 1
}

num

num = 100
repeat {
    num += 1
}while num < 100

num

// 반복문이 무한루프에 빠지지 않도록 condition이 false로 잘 빠져나가는지 여러번 확인하는 것이 중요하다~~!
