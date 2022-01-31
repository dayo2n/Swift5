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
 # Tuples
 
 ## Tuple Expression
 ![tuple-expr](tuple-expr.png)
 */
let i = 12 // scalar, 값을 하나만 저장할 수 있다.
let ii = (12, 34) // compound, 값을 여러 개 저장할 수 있다.

// 가상의 데이터를 튜플로 저장해보자.
let data = ("<html>", 200, "OK", 12.34)
//data 상수의 자료형은 (String, Int, String, Double)의 튜플
// 새로운 멤버를 추가하거나 기존 멤버를 삭제할 수 있을까? 불가능하다 !! 하지만 값 변경은 가능하다.

/*:
 ## Explicit Member Expression
 ![eme](eme.png)
 */
// 멤버 변수 접근을 위해 .(점)을 사용한다!

data.0
data.1
data.2
data.3

//data.1 = 404 // 데이터가 상수라서 변경할 수 없다고 에러가 발생한다.


// mutability : 값이 불변이냐 가변이냐
var mutableTuple = data
mutableTuple.1 = 400
