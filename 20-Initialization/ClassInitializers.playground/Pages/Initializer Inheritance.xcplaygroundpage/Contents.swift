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
 # Initializer Inheritance
 */
class Figure {
   var name: String

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
    
    convenience init() {
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width: Double = 0.0
    var height: Double = 0.0
    
    init(name: String, width: Double, height: Double) {
        // 1. 현재 클래스에 있는 속성을 먼저 초기화
        self.width = width
        self.height = height
        
        // 2. 상위 클래스에 있는 속성은 super.init()을 호출
        super.init(name: name)
    }
    
    override init(name: String) { // designated initializer를 오버라이드
        width = 0
        height = 0
        super.init(name: name)
    }
    
    // designated initializer와 달리 오버라이드라는 개념이 적용되지 않음
    // 항상 동일한 클래스에 있는 다른 이니셜라이저를 호출 -> Rectangle의 Default initializer가 호출될듯
    convenience init() {
        self.init(name: "unknown")
    }
}

let r = Rectangle()
r.name
r.width
r.height
