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

// User Defined Type (Custom Data Type) : Enumeration, Structure, Class

// Programming Paradigm
// Event-driven, Literate, Object-Oriented, Imperative, Functional, Symbolic, Declarative, Procedural, Protocol-Oriented



// Swift: Multi-Paradigm (Object-Oriented, Protocol-Oriented, Functional)

// Object Oriented Programming 객체지향 프로그래밍
// Abstraction 추상화
// Class 클래스 : 특징은 속성으로, 행동은 메소드로 -> 객체 Instance
// Structure 구조체 : 비교적 작은 데이터를 저장하거나 값 형식이 필요한 경우 구조체로 구현

/*:
 # Structure
 ![Struct](struct.png)
 */

struct Person {
    var name: String
    var age: Int
    
    func speak() {
        print("Hello")
    }
}

let p = Person(name: "Steve", age: 50)


let name = "Paul"
name

p.age
p.name


p.speak()


// 함수와 메소드를 구분하는 방법
// 함수는 이름만으로 호출, 메소드는 인스턴스 이름을 이용해 호출
//: [Next](@next)
