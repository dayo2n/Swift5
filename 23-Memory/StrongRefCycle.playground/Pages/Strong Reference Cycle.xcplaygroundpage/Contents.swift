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

import Foundation

/*:
 # Strong Reference Cycle
 ##  강한 참조 사이클
 */


class Person {
   var name = "John Doe"
   var car: Car?
   
   deinit {
      print("person deinit")
   }
}

class Car {
   var model: String
   var lessee: Person?
   
   init(model: String) {
      self.model = model
   }
   
   deinit {
      print("car deinit")
   }
}

var person: Person? = Person()
var rentedCar: Car? = Car(model: "Porsche")
//Car 인스턴스의 #ref = 1, Person #ref = 1

person?.car = rentedCar
// 속성과 인스턴스가 강한 참조로 연결되어 Car 인스턴스의 #ref = 2 (rentedCar, person.car), Person #ref = 1
// 인프런 강의 속 그림 참조

rentedCar?.lessee = person
// Car 인스턴스의 #ref = 2, Person #ref = 2

person = nil
// Car 인스턴스의 #ref = 2, Person #ref = 1 (rentedCar.lessee)
rentedCar = nil
// Car 인스턴스의 #ref = 1 (person.car), Person #ref = 1 (rentedCar.lessee)
// 문제는 person와 rentedCar에는 nil로 초기화해서 두 인스턴스에 접근할 방법이 없음에도 참조 카운트는 각각이 1이다.



//: [Next](@next)
