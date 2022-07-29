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
 # Initializer Requirements
 ![init](init.png)
 */

protocol Figure {
    var name: String { get }
    init(name: String)
}

struct Rectangle: Figure {
    var name: String
    // memberwise initializer가 제공되고 있음 -> 프로토콜의 요구사항 init(name: String)을 충족시킴
    // protocol의 생성자가 받는 인자의 이름이 name이 아니라면 에러 발생
}

class Circle: Figure {
    var name: String
    
    // class에서는 상속을 고려해 모든 서브클래스에서 프로토콜을 충족시켜야하기 때문에 required로 선언해야 함
    required init(name: String) {
        self.name = name
    }
}

// final class는 더이상 상속되지 않기 때문에 required로 선언하지 않아도 됨
final class Triangle: Figure {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Oval: Circle { // 이미 수퍼클래스로부터 Figure 프로토콜을 채용하고 있기 때문에 Figure는 추가 불가능함
    var prop: Int
    
    init() {
        prop = 0
        super.init(name: "Oval")
    }
    
    required convenience init(name: String) {
        self.init()
    }
}

protocol Grayscale {
    init(white: Double)
}

struct Color: Grayscale {
    // non-failable requirement를 failable로 충족시킬 수 없음
    // failable requirement를 non-failable로 충족시킬 수 없음
    init!(white: Double) {
        
    }
}
