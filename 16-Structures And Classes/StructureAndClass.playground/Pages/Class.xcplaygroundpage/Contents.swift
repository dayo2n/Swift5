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
 # Class
 ![Class](class.png)
 */

class Person {
    var name = "John Doe"
    var age = 0
    
    func speak() {
        print("Hello")
    }
}

let p = Person()

// Structure vs Class
/*
 +------------------+------------------+------------------+
 |                  |Structure         |Class             |
 +==================+==================+==================+
 |Type              | Value Type       | Reference Type   |
 |Deinitializer     | X                | O                |
 |Inheritance       | X                | O                |
 |Reference Counting| X                | O                |
 +------------------+------------------+------------------+
 */


// 구조체와 클래스는 저장공간을 처리하는 방식에 차이가 있음.
// 구조체는 스택에 값을 저장, 값을 전달할 때마다 복사본 생성
// 클래스는 힙에 저장, -> 스택에는 힙에 저장된 값을 전달, -> 복사본 생성하지 않고 주소만 전달 (참조형)

