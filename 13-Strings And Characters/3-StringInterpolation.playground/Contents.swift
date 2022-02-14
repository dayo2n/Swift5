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
/*
 https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/Strings/Articles/formatSpecifiers.html#//apple_ref/doc/uid/TP40004265-SW1
 */
/*:
 # String Interpolation
 ![placeholder](placeholder.png)
 */
var str = "12.34KB"

let size = 12.34
str = String(size) + "KB"

str = "\(size)KB"
/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */
// %부터 f까지를 포맷지정자
str = String(format: "%.1fKB", size)
str = String(format: "%.2fL=KB", size)

String(format: "Hello, %@", "SWift")
String(format: "%d", 12)
String(format: "%d", 12.34) // 12가 출력될 것이라 생각할 수 있지만 0이 출력될 것이다. 실수 출력을 원하면 d가 아닌 f!

String(format: "%10.3f", 12.34) // 전체 10자리 중 3자리만 소수점으로
String(format: "%010.3f", 12.34) // $ 다음의 0은 앞을 0으로 채우라는 뜻

String(format: "[%d]", 123)
String(format: "[%10d]", 123) // 전체 10자리, 빈자리가 있으면 오른쪽 정렬
String(format: "[%-10d]", 123) // 전체 10자리, 빈자리가 있으면 왼쪽 정렬

let firstName = "Yoon-ah"
let lastName = "Lim"

let korFormat = "그녀의 이름은 %2$@ %@ 입니다." // %2$@ : 두번째 포맷 지정자, %1$@: 첫번째 포맷 지정자
let engFormat = "Her name is %@ %@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)





//str = "\" //  escape는 특별한 용도로 사용되므로 문자열 리터럴에 직접 사용하는 것은 불가능
// 사용하고싶다면 백 슬래시를 두 개 써야함 => escape sequence 라고 한다
str = "\\"
print(str)

print("A\tB")
print("C\nD")

print("\"Hello.\" He Said.")





// ======================== Swift 5+
struct Size {
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)
print("\(s)")

//extension Size: CustomStringConvertible {
//    var description: String {
//        return "\(width) x \(height)"
//    }
//}
// 위와 동일한 코드를 String interpolation 방식으로 적용해보자
extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Size) {
        appendInterpolation("\(value.width) x \(value.height)")
    }
    mutating func appendInterpolation(_ value: Size, style: NumberFormatter.Style) {
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let width = formatter.string(for: value.width), let height = formatter.string(for: value.height) {
            appendInterpolation("\(width) x \(height)")
        } else {
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}
print("\(s)")
print("\(s, style: .spellOut)")
