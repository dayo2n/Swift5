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
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]


a == b
a != b

// 동일 요소가 다른 순서로 저장된 집합인 경우
b == d // 같은 셋으로 판단

// elementsEqual은 순서대로 두 컬렉션의 값을 비교, true로 나오기도 함
b.elementsEqual(d)


// 부분집합? 진부분집합?
a.isSubset(of: a)
a.isStrictSubset(of: a) // 진부분집합? 두 집합의 원소가 일치하지 않을 때의 부분 집합

b.isSubset(of: a)
b.isStrictSubset(of: a)

// 상위집합? 진상위집합?
a.isSuperset(of: a)
a.isStrictSuperset(of: a) // 자기자신은 진상위집합은 아님

a.isSuperset(of: b)
a.isStrictSuperset(of: b)

a.isSuperset(of: c)
a.isStrictSuperset(of: c)

// 교집합이면 false, 서로소집합이면 true
a.isDisjoint(with: b) // false면 동일 요소가 있다는 뜻
a.isDisjoint(with: c)
b.isDisjoint(with: c)

/*:
 # Combining Sets
 */

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

var result = b.union(c) // b와 c의 합집합이 새로운 유닛으로
result = b.union(a)

b.formUnion(c) // 원본을 직접 변경해 합집합 연산
b



// --
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.intersection(b) // 교집합
result = c.intersection(b) // 서로소집합끼리 교집합 연산시 빈 셋이 초기화

a.formIntersection(b)
a

b.formIntersection(c) // 원본인 b가 변경되고 빈 셋이 됨



// --
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

result = a.symmetricDifference(b) // (1 - 교집합) 연산 : 대칭차, 여집합
result = c.symmetricDifference(b) // 교집합이 없는 경우 전부 (1)

a.formSymmetricDifference(b)


// --
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

// 차집합
result = a.subtracting(b)
a.subtract(b)
a
