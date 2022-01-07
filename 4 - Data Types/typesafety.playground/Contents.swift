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
 # Type Safety
 */
/*
 Swift가 안전한 언어인 이유? 형식의 안정성
스위프트는 자료형을 엄격히 구분한다!
*/

// 호환되지 않는 타입과 값들
//let str: String =  123
//let num: Int = 12.34

// 메모리 공간의 크기가 다르므로 호환되지 않는다.
//let a = 7 //  8바이트
//let b: Int8 = a // 1바이트

// 메모리 공간의 크기는 같지만, 타입명이 다르므로 호환되지 않는다.
//let a = 7 //  8바이트
//let b: Int64 = a // 8바이트

//let a = 12
//let b = 3.456
//let result = a * b // 계산불가. 타입이 같아야 연산 가능.
// 이럴때는 int를 Double로 형변환해서 계산해야함. 소수점을 잃으면 안되니까!
let a = 12
let b = 3.456
let result = Double(a) * b

Int(Double(a) * b)  // a를 Double로 형변환 후 b와 곱하고 Int로 형변환
a * Int(b) // b를 Int로 형변환 후 a와 곱해줌
