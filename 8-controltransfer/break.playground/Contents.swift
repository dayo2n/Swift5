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
 # break
 */

// 현재 실행중인 코드를 중지하고 다음 문장을 실행한다. == 다음 문장으로 제어를 전달한다.

let num = 1 // 짝수로도 바꿔보자!
switch num {
case 1...10:
    print("begin block")
    
    if num % 2 != 0 {
        break
    }
    print("end block ")
default:
    break // 비우면 에러남. 아무작동도 하지않을때는 break로 채워준다.
}

print("done")

for i in 1...10{
    print("OUTER LOOP", i)
    
    for j in 1...10{
        print(" inner loop", j)
        
        if j > 1 {
            break // break는 가장 인접한 반복문만 종료한다.
        }
    }
}
