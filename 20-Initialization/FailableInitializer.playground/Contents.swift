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
 # Failable Initializer
 ![failable](failable.png)
 */

struct Position {
   let x: Double
   let y: Double
    
    init?(x: Double, y: Double) {
        guard x >= 0.0, y >= 00 else { return nil } // 음수면 초기화 실패하도록 작성
        
        self.x = x
        self.y = y
    }
    
    init!(value: Double) {
        guard value >= 0.0 else { return nil }
        
//        self.x = value
//        self.y = value
        
        
//      failable initializer는 다른 failable initializer나 non-failable initializer 호출 가능
        self.init(x: value, y: value)
    }
    
//    init(value: Double) {
//        self.x = value
//        self.y = value
//    }
//    error! initializer의 오버로딩은 failable을 구분하지않아 위와 같은 것으로 인식함
    
    init(value: Int) {
        // 이 안에서 첫번째 이니셜라이저를 호출할 수 없음
        // 전체 속성이 초기화되어야하는데 물음표가 붙은 이니셜라이저는 nil일 수 있으므로
    }
}

var a = Position(x: 12, y: 34)

a = Position(x: -12, y: 0)

var b = Position(value: 12)
b

b = Position(value: -12)
// crash는 발생하지않고 nil을 리턴하고 끝남
// why? IUO 구현이 바뀌어서 이제는 옵셔널처럼 동작함

var c: Position = Position(value: 12) // 이렇게하면 변수에 값이 저장되는 시점에 자동 언래핑
//c = Position(value: -12) // crash!!


