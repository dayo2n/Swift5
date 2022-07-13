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


// 주로 정렬 속도보다 검색속도가 중요한 경우 사용되나, 배열이나 딕셔너리보다 덜 사용됨
// single type, single unique value, hashing
/*:
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */
// set 리터럴이 따로 없어 배열 리터럴 [] 을 사용
let arr = [1, 2, 2, 3, 3, 3] // 이건 그냥 배열
arr.count

let set : Set<Int> = [1, 2, 2, 3, 3, 3] // Set이라는 자료형은 명시해야하나, 값에 대한 자료형은 형식추론 가능
set.count

/*:
 ## Inspecting a Set
 */
set.count
set.isEmpty
/*:
 ## Testing for Membership
 */
set.contains(1)
/*:
 ## Adding and Removing Elements
 */
var words = Set<String>()

var insertResult = words.insert("Swift")
insertResult.inserted
insertResult.memberAfterInsert

insertResult = words.insert("Swift")
insertResult.inserted // set은 반복 요소가 추가되지 않으므로 insert되지 않음
insertResult.memberAfterInsert

var updateResult = words.update(with: "Swift")
updateResult
// 문자열 반환 -> update
words

updateResult = words.update(with: "Apple")
updateResult
// nil이 반환 -> insert됨
words

var value = "Swift"
value.hashValue

updateResult = words.update(with: value)
updateResult

value = "Hello"
value.hashValue

updateResult = words.update(with: value)
updateResult



struct SampleData: Hashable {
    var hashValue: Int = 123
    var data: String
    
    init(_ data: String) {
        self.data = data
    }
    
    static func ==(lhs: SampleData, rhs: SampleData) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}


var sampleSet = Set<SampleData>()

var data = SampleData("Swift")
data.hashValue

var r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet

data.data = "Hello"
data.hashValue

r = sampleSet.insert(data)
r.inserted
r.memberAfterInsert
sampleSet
// hash값이 그대로이므로 insert되지 않음


// 이때 새 값으로 업데이트하고 싶을 때 쓰는 메소드가 update
sampleSet.update(with: data)
sampleSet



// how to delete emelement
words
words.remove("Swift")
words
words.remove("Ghost") // 에러는 발생 X, 없는 값 삭제 ㅅ ㅣnil 반환


words.removeAll()
words
