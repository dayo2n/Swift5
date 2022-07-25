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
 # Stored Properties
 ![syntax](syntax1.png)
 */

class Person {
    let name: String = "John Doe" // 상수니까 값 변경 불가
    var age: Int = 33
}

/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */

let p = Person()
p.name
p.age

// Swift에서는 Dot syntax를 "Explicit Memeber Expression : 명시적 멤버 표현식"이라고 표현

//p.name = "Hey" // error
p.age = 30 // Person을 struct로 바꾸고나면 여기가 에러남 -> p를 상수(let)로 선언했기 때문

/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */

// 지연 저장 속성 : 초기화를 지연시킴, 속성에 처음 접근하는 시점에 초기화
// lazy let은 사용 불가
// 생성자에서 초기화하지않기 때문에 선언 시점에 기본값을 저장해야 함

struct Image {
    init() {
        print("new image")
    }
}

struct BlogPost {
    let title: String = "Title"
    let content: String = "Content"
//    let attachment: Image = Image() // stored property로 선언하면 최악의 경우 오버헤드 발생 가능
    lazy var attachment: Image = Image() // 생성자나 연산하는 등 어떤 표현식도 넣을 수도 있다
    
    let date: Date = Date()
    
    // lazy 키워드를 삭제하면 에러발생 : date의 초기화 시점이 이용되는 시점과 같으므로
    lazy var formattedDate: String = { // closure를 활용해 초기화
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }() // 클로저 뒤 괄호가 핵심 :!: 클로저가 초기화 시점에 호출됨
}

let post = BlogPost() // Lazy하므로 Image 구조체의 생성자가 바로 실행되지 않음
//post.attachment // error! 구조체 자체가 상수로 선언되어 있어 속성인 attachment도 lazy하게 값이 변경될 수 없음

var post2 = BlogPost()
post2.attachment
