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
import Foundation


/*:
 # Comparing Dictionaries
 */

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "Banana"]


a == b
// 순서는 고려하지 않고, 저장되어 있는 키와 값이 같으면 같은 딕셔너리로 인식, 대소문자 비교 O
a != b

// 대소문자를 무시하고 비교하고 싶다면
// 1. 기존 방법 (잘못된 방법임)
//a.elementsEqual(b) { (lhs, rhs) -> Bool in
//    return lhs.key.caseInsensitiveCompare(rhs.key)
//    == .orderedSame &&
//    lhs.value.caseInsensitiveCompare(rhs.value)
//    == .orderedSame
//}
// 리턴값이 항상 다를 수 있음 why? 딕셔너리는 순서를 고려하지 않기때문에 lhs와 rhs가 랜덤으로 비교되므로 다른 키값끼리 비교되기도 한다.

// 2. 딕셔너리의 요소들을 정렬
let aKeys = a.keys.sorted()
let bKeys = b.keys.sorted()

aKeys.elementsEqual(bKeys) { (lhs, rhs) -> Bool in
    // 키값이 같은지 먼저 확인
    guard lhs.caseInsensitiveCompare(rhs)
            == .orderedSame else { return false }
    
    guard let lv = a[lhs], let rv = b[rhs],
    lv.caseInsensitiveCompare(rv) == .orderedSame
    else { return false }
    return true
}
/*:
 # Finding Elements
 */

var words = ["A" : "Apple", "B" : "Banana", "C" : "City"]
let c : ((String, String)) -> Bool = {
    // 키가 "B"이거나 || 값에 "i"가 포함되어 있는지
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)
// 일치하는 값이 하나라도 있다면 참

let r = words.first(where: c)
// optional tuple로 리턴
r?.key
r?.value
// dictionary는 정렬되지 않은 컬렉션이므로 실행할때마다 요소가 저장되는 순서가 달라짐. 따라서 리턴값이 달라질 수 잇다.

words.filter(c)
// 조건을 만족시키는 모든 요소가 새로운 딕셔너리로 리턴된다.
