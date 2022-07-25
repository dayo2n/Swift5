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
 # self
 ![self](self.png)
 */

// self는 인스턴스에 자동으로 선언됨

//class Size {
//   var width = 0.0
//   var height = 0.0
//
//    func calcArea() -> Double {
////        return self.width * self.height // 대부분 self를 생략해 속성에 접근
//        return width * height
//    }
//
//    var area: Double {
////        return self.calcArea() // self를 생략해 메소드를 호출
//        return calcArea()
//    }
//
//    func update(width: Double, height: Double) {
////        width = width // self express을 사용하지 않으면 모두 파라미터의 width로 인식함
//        self.width = width
//        self.height = height
//    }
//
//    func doSomething() {
//        // closure 내부에서 속성에 접근하려면 self를 캡쳐해야 함
////        let c = { width * height}
//        let c = { self.width * self.height}
//    }
//
//    static let unit = ""
//
//    static func doSomething() { // 형식 메소드
////        self.width // width는 형식 속성이 아니기 때문에 인식 불가
//        self.unit // 둘 다 타입멤버라 도트로 접근 가능, self 생략 가능
//    }
//}



struct Size {
    var width = 0.0
    var height = 0.0
    
    mutating func reset(value: Double) {
//        width = value
//        height = value
        self = Size(width: value, height: value) // 새로운 인스턴스로 교체됨, 클래스에선 사용 불가
    }
}


/*:
 # super
 ![super](super.png)
 */

// self는 구조체와 클래스 모두 사용
// super는 상속과 관련있으므로 클래스에서만 사용
