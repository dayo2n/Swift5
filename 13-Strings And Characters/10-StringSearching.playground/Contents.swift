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
 # Finding Substrings
 */
let str = "Hello, Swift"

str.contains("Swift")
str.contains("swift") // 대소문자 구분

str.lowercased().contains("swift")

str.range(of: "Swift") // if not contains, return nil
str.range(of: "swift", options: [.caseInsensitive])

let str2 = "Hello, Programming"
let str3 = str2.lowercased()


// 공통된 접두어가 있으면 새 문자열로 반환
var common = str.commonPrefix(with: str2)
common = str.commonPrefix(with: str3)

str.commonPrefix(with: str3, options: [.caseInsensitive])
// 리턴된 문자열은 대문자가 포함된다. 원본 문자열인 str에서 가져오기 때문!
str3.commonPrefix(with: str, options: [.caseInsensitive])
// 이번에는 원본 문자열이 str3이므로 소문자로만 구성된 문자열이 출력된다
