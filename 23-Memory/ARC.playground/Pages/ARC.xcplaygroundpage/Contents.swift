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
 # Automatic Reference Counting
 */
// 스택은 필요하지않으면 자동으로 제거되지만, 힙은 그렇지않기 때문에 메모리 관리가 필요함 -> class instance
// objective-c와 같은 메모리 관리 모델을 사용

// owner policy, reference counting

// MRC: Manual Reference Counting : 소유권에 대해 직접 처리하는 코드를 작성해야 함
// ARC: Automatic Reference Counting: MRC와 동작과정은 같지만 컴파일러가 알아서 코드를 작성해줌

// Objective-C는 두 모델 사용 가능하나 웬만하면 ARC 사용, Swift는 MRC를 사용하지않음

// Strong Reference: 소유할때마다 참조 카운트가 +1, 포기할때마다 -1, 인스턴스는 소유자가 존재하는동안 메모리에서 제거되지 않음

class Person {
   var name = "John Doe"
   
   deinit {
      print("person deinit")
   }
}

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person()
// 현재 Person Instance의 reference couting은 1 (person1)
person2 = person1
person3 = person1
// 현재 Person Instance의 reference couting은 3

person1 = nil
person2 = nil
// nil로 초기화 == 소유권 포기
// 현재 Person Instance의 reference couting은 1 (person3)

person3 = nil
// 현재 Person Instance의 reference couting은 0 -> 소유자가 없으므로 메모리에서 제거되면서 소멸자가 호출됨
