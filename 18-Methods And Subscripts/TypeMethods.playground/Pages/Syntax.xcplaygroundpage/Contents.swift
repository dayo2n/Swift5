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
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */

// 형식에 연관된 메소드

class Circle {
    static let pi = 3.14 // type property
    var radius = 0.0 // instance property
    
    // instance method
    func getArea() -> Double {
        return radius * radius * Circle.pi // 타입 속성은 클래스이름으로 접근
    }
    
    static func printPi() { // --> class func printPi()로 선언해야 서브클래스에서 오버라이드 가능
        print(pi)
        // 타입메소드에서는 타입 이름없이 타입속성에 접근가능
        // 반면, 인스턴스 멤버에는 직접 접근 불가
    }
}

// type method
Circle.printPi()

class StrokeCircle: Circle {
    // static 키워드로 선언한 메소드를 서브클래스에서 오버라이드할 수 없음이 핵심, 인스턴스 메소드에도 동일한 규칙
//    override static func printPi() {
//        print(pi)
//    }
    
    // 서브클래스에서 오버라이드하는 메소드는 스태틱이 아니라 클래스로 선언되어야 정상적으로 오버라이드 가능
}
