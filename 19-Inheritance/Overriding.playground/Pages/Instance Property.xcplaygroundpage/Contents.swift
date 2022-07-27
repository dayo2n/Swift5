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
 # Overriding
 */

// Override 가능한 것들 : methods, properties, subscripts, initializers

class Figure {
   var name = "Unknown"

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
}

class Circle: Figure {
   var radius = 0.0
    
    // read-only computed property는 읽기전용이므로 옵저버 추가 불가 (값이 바뀌지않으니까)
    var diameter: Double {
        return radius * 2
    }
    
   override func draw() { // error without override keyword
       super.draw() // 상위 구현된 코드를 기반할 수 있음
       print("😍")
    }
}

let c = Circle(name: "Circle")
c.draw() // override한 메소드가 실행됨. 상위 구현된 메소드는 완전 무시됨

class Oval: Circle {
//    override var radius: Double = 12.34 // error! 속성은 오버라이딩시 계산 속성 또는 프로퍼티 옵저버를 추가해야 함
    override var radius: Double {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    
    override var diameter: Double {
        get {
            return super.diameter
        }
        set {
            super.radius = newValue / 2
            // Circle에서 읽기 전용 속성인 diameter의 속성이 바뀌지는 않음
            // 따라서 다른 속성을 바꾸는 방식으로 오버라이딩해야 함
        }
    }
}

// ** 정리
// 읽기 전용 속성을 읽기, 쓰기 속성으로 오버라이딩 가능
// 읽기와 쓰기 가능 속성을 읽기 전용으로는 오버라이딩 불가

// *** super 대신 self를 사용하면 재귀호출이 발생하다가 코드가 종료됨

// 오버라이드를 금지하고 싶다면 final 키워드 추가

let o = Oval(name: "Oval")
o.radius
// final 키워드는 오버라이딩 금지이라는 것이지, 접근이 안되는 것은 아님
