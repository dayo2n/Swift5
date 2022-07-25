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
import Darwin

/*:
 # Raw Values
 ![Raw Values](raw-values.png)
 */
// 열거형 값에 원시값을 줄 수 있음

enum Alignment: Int { // 0부터 1씩 선언된 순서대로 원시값이 늘어나도록 적용됨
    case left
    case right = 100 // 직접 지정하면 해당 값이 들어가고
    case center // 이후 지정하지 않으면 무조건 이전 값을 기준으로 1씩 늘어남, => Alignment.center.rawValue = 101
}

Alignment.left.rawValue
Alignment.right.rawValue
Alignment.center.rawValue

//Alignment.center.rawValue = 10 // 초기화 불가


Alignment(rawValue: 0) // 동일한 rawValue값을 가진 값이 생성
Alignment(rawValue: 200) // nil




enum Weekday: String {
    case sunday
    case monday = "MON"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue
Weekday.monday.rawValue
Weekday.tuesday.rawValue





enum ControlChar: Character { // Character는 원시값을 직접 저장해주어야 함
    case tab = "\t"
    case newLine = "\n"
    
    
}
