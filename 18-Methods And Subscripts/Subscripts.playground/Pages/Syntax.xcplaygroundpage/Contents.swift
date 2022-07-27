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
 # Subscripts
 ![subscript](subscript.png)
 */

let list = ["A", "B", "C"]
list[0]

/*:
 ![subscript-syntax](subscript-syntax.png)
 */

// subscript는 최소한 값을 읽을 수는 있어야하므로 get없이 set블록만 있을 수 없음

class List {
    var data = [1, 2, 3]
    
    subscript(index: Int) -> Int {
//        subscript(index: Int) -> Int {
//          argument label 사용 가능 : 파라미터가 두 개 이상이거나 가독성을 높여주고싶을 때 사용, 보통은 사용하지 않음
        get {
            return data[index]
        }
        
        set {
            data[index] = newValue
        }
    }
}

var l = List()
l[0]

l[1] = 123

// l[0, 1] // error!
// l["A"] // error!


struct Matrix {
    var data = [[1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]]
    
    subscript(row: Int, col: Int) -> Int {
        return data[row][col] // read-only (set block 생략)
    }
}

let m = Matrix()
m[0, 0] // param이 두 개 이상이면 콤마로 구분해 전달
m[0, 10] // Index out of range -> TODO: if와 optional을 사용해 범위 검사
