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
 # Escaping Closure
 */

func performNonEscaping(closure: () -> ()) {
    print("start")
    closure()
    print("end")
}

performNonEscaping {
    print("closure")
}

// Non-escaping Closure: 함수가 종료되기 전에 종료된다
// Escaping Closure: 함수의 종료와 관계없이 언제든 종료될 수 있다.

func performEscaping(closure: @escaping () -> ()) {
    print("start")
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
        closure() // closure 파라미터는 기본적으로 non-escaping이라는 에러가 발생한다. => @escaping 키워드 명시가 필요하다!
    }
    print("end")
}

performEscaping {
    print("closure")
}

// -- 실행 결과 --
//start
//end
//closure
