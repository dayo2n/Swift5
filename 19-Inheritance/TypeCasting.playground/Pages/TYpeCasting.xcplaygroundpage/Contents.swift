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
 # Type Casting
 */

class Figure {
   let name: String
   
   init(name: String) {
      self.name = name
   }
   
   func draw() {
      print("draw \(name)")
   }
}

class Triangle: Figure {
   override func draw() {
      super.draw()
      print("🔺")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
   
   override func draw() {
      super.draw()
      print("⬛️ \(width) x \(height)")
   }
}

class Square: Rectangle {
   
}

class Circle: Figure {
   var radius = 0.0
   
   override func draw() {
      super.draw()
      print("🔴")
   }
}



/*:
 ## Type Check Operator
 ![type-check](type-check.png)
 */

// 왼쪽엔 표현식 (확인할 대상), 오른쪽엔 형식
// 왼쪽 표현식 <= 오른쪽 형식, true

let num = 123

num is Int
num is Double
num is String

let t = Triangle(name: "Triangle")
let r = Rectangle(name: "Rect")
let s = Square(name: "Square")
let c = Circle(name: "Circle")

r is Rectangle
r is Figure // Rectangle은 Figure를 상속하고 있음
r is Square // Square는 Rectangle보다 하위 클래스

/*:
 ## Type Casting Operator
 ![type-casting](type-casting.png)
 */

let nsstr = "str" as NSString

//"str" as Int // error! fail to type casting

// - - - - - - - - - - - - - - - - - - - - - - - -

// as? (Conditional Cast) : 성공하면 결과를 리턴, 실패하면 닐 리턴
// as! : 실패하면 크래쉬 발생

t as? Triangle
t as! Triangle

var upcasted: Figure = s // how to upcast (1) compile time
upcasted = s as Figure // how to upcast (2) : runtime
// upcast is always safe

// but downcast isn't, downcast must use runtime cast
var downcasted = upcasted
downcasted as? Square
downcasted as! Square
downcasted as? Rectangle
downcasted as! Rectangle

downcasted as? Circle
// downcasted as! Circle // error!
// forced cast는 사용을 지양

if let c = downcasted as? Circle {
    // conditional cast와 optional binding을 같이 쓰는 것이 좋음
}



let list = [t, r, s, c]
// 배열에는 동일한 타입만 저장할 수 있는데 오류없이 위 코드가 실행됨
// 리스트의 자료형은 가장 슈퍼클래스로

for item in list {
    item.draw()
    // 자료형은 가장 슈퍼클래스인 Figure로 선언됐지만 각각 오버라이드한대로 실행됨. "다형성 polymorphism"
//    item.radius // 여기서는 Figure에 선언된 속성에만 접근 가능 -> 필요시 다운캐스팅으로 접근 가능
    if let c = item as? Circle {
        c.radius
    }
}
