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
 # Initializer Delegation
 
 ## Value Type
 */

struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

   init(value: Double) {
       // initializer 안에서 다른 initializer를 호출하는 것
       // 호출한다고 해서 initalizer delegation이 이루어지는 것은 아님
       // 모든 이니셜라이저가 실행된 다음, 전체 속성의 값이 초기화되어야 함
       self.init(w: value, h: value)
   }
}

/*:
 ## Class
 
 ### Rule of initializer deligation

 1. Delegated Up:
    Designated initializer는 반드시 수퍼클래스의 designated initializer를 호출해야 함
 2. Delegate Across:
    Convenience initializer는 동일 클래스의 다른 initializer(종류는 상관없이)를 반드시 호출해야 함
 3. Convenience initializer를 호출했을 때, 궁극적으로 designated initializer가 호출되어야 함
 */

class Figure {
    let name: String
    
    // designated initializer
    init(name: String) {
        self.name = name
    }
    
    // convenience initializer
    convenience init() {
        self.init(name: "unknown") // delegate across
    }
}

class Rectangle: Figure {
    var width = 0.0
    var height = 0.0
    
    // designated initializer
    init(n: String, w: Double, h: Double) {
        width = w
        height = h
        super.init(name: n) // delegate up
    }
    
    convenience init(value: Double) {
        self.init(n: "rect", w: value, h: value)
    }
}

class Square: Rectangle {
    
    // convenience initializer는 어떤 경우에도 delegate up이 불가능
    convenience init(value: Double) {
        self.init(n: "square", w: value, h: value)
        // super가 아닌 self임. 상속받은 클래스의 initializer를 호출한 것.
    }
    
    convenience init() {
        self.init(value: 0.0) // 첫번째 이니셜라이저를 호출함
    }
}


/*:
 ### 클래스 초기화 방식

 1. 선언된 모든 속성이 초기화. 서브클래스에서 슈퍼클래스 순으로, 상속계층을 따라서 초기화됨.
 초기화할 수 없는 속성이 있다면 초기화에 실패하고 더이상 올라가지 않고 종료됨.
 2. 1에서 초기화가 성공적으로 끝나면, 슈퍼클래스 -> 서브클래스 순으로 내려오며 부가적인 작업이 처리됨.
 아무런 작업없이 완료되는 경우도 많음.
 */
