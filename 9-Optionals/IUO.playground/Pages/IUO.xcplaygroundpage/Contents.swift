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
 # Implicitly Unwrapped Optionals
 ![iuo](iuo.png)
 */
// 자동 추출, 암시추출

let num: Int! = 12
let a = num
a // Optional Int (Int?). IUO는 형식추론을 사용할 때 자동으로 추출되지 않는다.

let b: Int = num // Non-optional Int (Int)
// 하지만 여기서 num을 Non-optional Int로 바꾸면 에러가 발생하고 b에서 강제추출이나 옵셔널 바인딩 처리를 해주어야 한다.

// num에 nil이 저장되어 있는 상태에서 b에 값으로 저장해주면 오류가 발생한다. IUO는 값을 확인하지는 않으므로 유의해야 한다.
// IUO를 굳이 사용하지 않는 것을 권장하고, 대신에 옵셔널 바인딩이나 옵셔널을 사용하는 것이 가장 좋다!
