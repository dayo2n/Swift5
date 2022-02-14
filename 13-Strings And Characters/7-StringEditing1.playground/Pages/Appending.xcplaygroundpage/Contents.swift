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
 # Appending Strings and Characters
 */
// 메소드를 이용하여 문자열을 변경하는 방법을 알아보자!
var str = "Hello"
str.append(", ")
str

// append(void) vs appending(string)
let s = str.appending("Swift")
str // str은 변경되지 않았다!
s
//s.append("!!")
s.appending("!!")
// append는 원본을 변경하므로 상수인 문자열에는 append를 사용할 수 없다.

// appendingFormat도 원본은 변경하지 않음
"File size is ".appendingFormat("%.1f", 12.3456)


var newStr = "Hello Swift"
newStr.insert(",", at: newStr.index(newStr.startIndex, offsetBy: 5))

// optional이므로 옵셔널 바인딩을 이용
if let sIndex = newStr.firstIndex(of: "S") {
    newStr.insert(contentsOf: "Awesome ", at: sIndex)
}
newStr
//: [Next](@next)
