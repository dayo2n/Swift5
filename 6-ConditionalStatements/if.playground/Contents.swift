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
 # if
 ## Syntax
 ![if](if.png)
 */
// condition은 boolean 표현식
// 스위프트의 condition은 괄호로 감싸주지 않는다.

let id = "root"
let password = "1234qwer"

if id == "root"{
    print("valid id")
}

if password == "1234qwer"{
    print("valid pw")
}

// 논리 연산자를 이용해 두 조건식을 한 if문에서 처리해보자
if id == "root" && password == "1234qwer"{
    print("go to admin page")
}

// 굳이 이렇게는 쓰지 않는다. 위 if문의 else 조건에 해당하기 때문이다.
if id != "root" || password != "1234qwer" {
    print("incorrect input value")
}

/*:
 ## Syntax
 ![if-else](if-else.png)
 */
if id == "root" && password == "1234qwer"{
    print("go to admin page")
} else{
    print("incorrect input value")
}

/*:
 ## Syntax
 ![if-elseif-else](if-elseif-else.png)
 */

let num = 123

if num >= 0 {
    print("positive number or zero")
    
    if num % 2 == 0 {
        print("positive even number")
    }
//    else if num % 2 == 1 {
    else{
        print("positive odd number")
    }
}else {
    print("negative number")
}


// 조건이 오는 순서도 중요하다. 가장 까다로운 조건일수록 위쪽에 오는 것이 좋다!
if num > 0 {
    print("positive number")
}else if num > 10 {
    print("positive number over 10")
} else if num > 100 {
    print("positive number over 100")
}
