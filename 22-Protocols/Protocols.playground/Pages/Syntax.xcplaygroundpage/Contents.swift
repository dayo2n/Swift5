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
 # Defining Protocols
 ![define](define.png)
 ![protocol-inheritance](protocol-inheritance.png)
 */

protocol Something {
    func doSomething()
}

/*:
 # Adopting Protocols
 ![adopting](adopting.png)
 */

// 상속과 프로토콜 채용을 동시에 한다면 수퍼클래스 이름을 먼저 나열
struct Size: Something {
    func doSomething() {
        
    }
}

/*:
 # Class-Only Protocols
 ![class-only](class-only.png)
 */

// class에서만 채용가능하도록 하고싶다면 AnyObject를 상속하도록 함
// 열거형이나 구조체에서는 채용 불가

protocol SomethingObject: AnyObject, Something {
    
}

//struct Value: SomethingObject {
//    // error !
//}

class Object: SomethingObject {
    func doSomething() {
        // SomethingObject가 Something 프로토콜을 채용하고 있으므로 doSomething을 멤버로 구현해야 함
    }
}
