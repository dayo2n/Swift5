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

struct Contacts {
   var email: [String: String]?
   var address: String?
    
    func printAddress() {
        return print(address ?? "no address")
    }
}

struct Person {
   var name: String
   var contacts: Contacts?

   init(name: String, email: String) {
      self.name = name
      contacts = Contacts(email: ["home": email], address: "Seoul")
   }
    
    func getContacts() -> Contacts? {
        return contacts
    }
}
/*:
 # Optional Chaining
 */
// 옵셔널을 연달아서 호출하기.

/*
 1. 옵셔널체이닝의 결과는 항상 옵셔널이다.
 2. 옵셔널의 표현식 중 하나라도 닐을 리턴한다면 이어지는 표현식은 평가하지 않고 nil을 리턴한다.
 */

var p = Person(name: "James", email: "swift@example.com")
let a = p.contacts?.address

var optionalP: Person? = Person(name: "James", email: "swift@example.com")
//let b = optionalP.contacts.address // error 발생! -> nil을 방지하기 위해 optionalP에 옵셔널 체이닝이 필요하다
let b = optionalP?.contacts?.address
b

optionalP = nil
let c = optionalP?.contacts?.address // 가장 마지막에 있는 표현식은 address인데, 앞서 옵셔널 체이닝을 통해 접근했기 때문에 String이 아니라 Optional String이 된다.
c

p.contacts?.address?.count

p.getContacts()?.address

let f: (() -> Contacts?)? = p.getContacts
// 함수 자체가 옵셔널인 경우에는 괄호 앞에도 물음표를 붙여야 한다.
//f()?.address // error!
f?()?.address

let d = p.getContacts()?.printAddress() // 여기서 d의 자료형은 무엇일까? 옵셔널 체이닝 과정을 거쳤지만 printAddress()가 리턴값을 갖지 않는다. -> printAddress()가 정상적으로 호출되었다면 void가 리턴이 된다. 반대로 호출되지 않았다면 nil이 리턴된다.
// 이를 이용해 아래와 같이 응용할 수 있다!
if p.getContacts()?.printAddress() != nil {
    
}

// 조금 더 세련된 코드
if let _ = p.getContacts()?.printAddress() { // 바인딩 성공 여부만 판단하도록 와일드카드 패턴을 이용한다.
    
}

// 이번에는 optional chaining을 통해 subscript에 접근해보자.
let e = p.contacts?.email?["home"] // 딕셔너리 자료형에서는 square bracket 앞에 옵셔널을 붙여주어야 한다.

//p.contacts?.email?["home"].count
p.contacts?.email?["home"]?.count // 키와 연관된 값이 없을수도 있기 때문에 옵셔널로 접근해야하는데 이때는 square bracket 뒤에 붙여주어야 한다!!


// 이번에는 optional chaining을 이용해 address 속성을 바꾸어보자.
p.contacts?.address = "Daegu"
p.contacts?.address

optionalP?.contacts?.address = "Daegu"
optionalP?.contacts?.address
// OptionalP가 nil이기 때문에 다른 값에는 더 이상 접근하지않고, 따라서 값도 저장되지 않았다.
