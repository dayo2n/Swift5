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
 # Adding Elements
 */
var alphabet = ["A", "B", "C"]

alphabet.append("E")

alphabet.append(contentsOf: ["F", "G"])

alphabet.insert("D", at: 3)

alphabet.insert(contentsOf: ["a", "b", "c"], at: 0)

alphabet[0...2] = ["x", "y", "z"]
alphabet

alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
alphabet

alphabet[0...2] = ["z"] // 3개가 하나의 "z"로 바뀜
alphabet

alphabet[0..<1] = []
alphabet
 
/*:
 # Removing Elements
 */

alphabet = ["A", "B", "C", "D", "E", "F", "G"]

alphabet.remove(at: 2) // 잘못된 인덱스를 전달하면 오류 발생
alphabet

alphabet.removeFirst() // 첫 번째 요소를 삭제
alphabet

alphabet.removeFirst(2) // 첫 번째 요소부터 파라미터 p의 개수만큼 삭제

alphabet.removeAll()


// 삭제할 때 없는 인덱스의 값을 삭제하려고 하면 오류가 발생하므로 처리가 필요함

alphabet.popLast() // 조금 더 안전한 메소드. 배열이 비었다면 nil을 리턴하고 오류가 발생하지 않는다.
alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
alphabet

alphabet.removeSubrange(0...2)
alphabet

alphabet[0...1] = []
alphabet
