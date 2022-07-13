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
 # Adding Keys and Values
 */

var words = [String: String]()

words["A"] = "Apple" // 요소 추가됨
words["B"] = "Banana"

words.count
words

words["B"] = "Ball" // 기존에 있던 키 "B"의 값이 갱신됨

words.count
words

words.updateValue("City", forKey: "C") // 메소드로 값 추가하기, 없던 키에 대해서는 새로운 요소로 추가됨
words.updateValue("Circle", forKey: "C") // 이전에 저장된 값을 리턴하고, "C"에 대한 value를 업데이트
// insert + update = upsert라고 칭함

/*:
 # Removing Keys and Values
 */


words
words["B"] = nil // B에 대한 요소가 삭제
words

words["Z"] = nil // 존재하지 않는 키를 삭제하면 에러는 발생하지 않음

words.removeValue(forKey: "A") // 메소드로 요소 삭제, 해당 키에 대한 값을 반환하며 삭제함
words.removeValue(forKey: "A") // 존재하지 않는 요소를 삭제하면 nil을 반환

words.removeAll() // 요소 모두 삭제
words
