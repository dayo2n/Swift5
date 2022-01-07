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

//: [Previous](@previous)
/*:
 # Integer Types
 
 ![IntegerTypes](integer-types.png)
 */
Int8.min
Int8.max

// Int8의 메모리 크기
MemoryLayout<Int8>.size


/*:
 ## Signed vs Unsigned
 
 ![SignedUnsigned](signed-unsigned.png)
 */
Int8.min
Int8.max
UInt8.min
UInt8.max

/*:
 ## Int & UInt
 */
//Int8, UInt8, Int16 ,... 보다는 Int와 UInt를 사용하고, 거의 Int로 사용한다.
// why? 정수를 가장 빠르게 처리할 수 있다.

//대부분 64bit CPU를 사용하면 Int의 크기는 8바이트이다.




//: [Next](@next)
