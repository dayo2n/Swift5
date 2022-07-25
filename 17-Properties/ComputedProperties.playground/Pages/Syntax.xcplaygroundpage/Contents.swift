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
 # Computed Properties
 ![computed](computed.png)
 */

// computed : 수학적으로 계산되는 것이 아닌 다른 속성을 기반으로 속성값이 결정된다는 뜻

class Person {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }
    
    var age: Int { // Int 뒤에 할당 연산자를 사용하면 클로저, 없으면 읽기 전용 (Read-Only)
//        get {
            let calendar = Calendar.current
            let now = Date()
            let year = calendar.component(.year, from: now)
            return year - yearOfBirth
//        }
        
//        set {
//            let calendar = Calendar.current
//            let now = Date()
//            let year = calendar.component(.year, from: now)
//            yearOfBirth = year - newValue
//        }
    }
}

let p = Person(name: "John Doe", year: 2002)
p.age

//p.age = 50 // p.yearOfBirth가 1972로 다시 설정됨
p.yearOfBirth // setter가 없으면 읽기 전용


/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */

//get 키워드와 brace 삭제 가능

// get block을 생략하고 set block만 쓰는 것은 허용되지 않음
// => 쓰기 전용 computed property는 없다


