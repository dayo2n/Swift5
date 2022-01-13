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
 # guard
 ## Syntax
 ![guard-syntax](guard-syntax.png)
 */
// EARLY EXIT

// guard문의 내부에서는 반드시 코드의 실행을 중지해야 한다 = 가드문을 호출한 스코프를 종료해야한다?
// 가드문은 If문으로도 똑같이 구현할 수 있지만, if문에서는 조건의 수가 늘어날수록 코드가 중첩될 수 있다. 하지만 가드문에서는 코드를 깔끔하게 작성할 수 있다.
// 옵셔널 바인딩은 옵셔널 바인딩을 다룰 때 더 자세히 공부한다.

func validate(id: String?) -> Bool {
    guard let id = id else {
        return false
    }
    
    guard id.count >= 6 else {
        return false
    }
    
    // 아래처럼 나열하여 한 번에 검사 가능하다.
//    guard let id = id, id.count >= 6 else {
//        return false
//    }
    return true
}

validate(id: nil)
validate(id: "hello,Moon")


func validateUsingIf() {
    var id: String? = nil
    
    // 중첩이 두 단계
    if let str = id{
        if str.count >= 6 {
            print(str)
        }
    }
}

func validateUsingGuard() {
    var id: String? = nil
    
    // guard문으로 두 단계를 합치면 가독성이 더 좋아진다!
    guard let str = id else { return } // return문으로 코드를 종료하지 않으면 오류가 난다!
    guard str.count >= 6 else { return }
    
    print(str)
}


// 어떤 것을 사용하는 것이 좋을까?
// 정답은 없다 .... 쓰다보면 상황별로 무엇을 써야할 지 깨닫게 된다.
// 보통은 가벼운 조건이라면 if문을, 복잡하고 조건이 계속해서 중첩되는 경우 guard문을 사용한다.
