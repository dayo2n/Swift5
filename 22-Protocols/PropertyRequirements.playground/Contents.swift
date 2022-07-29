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
 # Property Requirements
 ![property](property.png)
 */

protocol Figure {
//    var name: String { get } // get이라는 요구사항이 따름
    var name: String { get set } // 읽기-쓰기가 가능해야 함
    // var앞에 static을 붙이면 채용하는 구조체의 name 멤버도 모두 스태틱 키워드가 붙어야 함
}

struct Rectangle: Figure {
//    let name = "Rect" // 상수는 읽기만 가능
    var name = "Rect"
}

struct Triangle: Figure {
    var name = "Triangle"
}

struct Circle: Figure {
    var name: String {
        get {
            return "Circle"
        }
        set {

        }
    }
}
