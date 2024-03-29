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
 # Any, AnyObject
 */
// general type

// Any는 값형식, 참조형식을 가리지않음
var data: Any = 1
data = 2.3
data = "str"
data = [1, 2, 3]
data = NSString()


var obj: AnyObject = NSString()
//obj = 1

if let str = data as? String {
    print(str.count)
} else if let list = data as? [Int] {
    // 배열이 저장되어있을 경우 실행될 부분
}

/*:
 # Type Casting Pattern
 */


switch data {
case let str as String:
    print(str.count)
case let list as [Int]:
    print(list.count)
case is Double:
    print("Double Value")
default:
    break
}
