//
//  Copyright (c) KxCoding <kky0317@gmail.com>
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

/*:
 # Scope
 */

// #1

let g1 = 123 // 같은 Scope에서 g1이라는 변수이름은 사용불가


func doSomething() {
   // #3
    
    let l1 = 123
    let g1 = 456 // global scope에 이미 존재하는 상수 g1을 재선언
    g1
    g2
   
   if true {
      // #4
       l1
       let l3 = 123
       
   }
   
   // #5
    let l2 = 123
}


// #2

let g2 = 123 // 같은 Scope에서 g2라는 변수이름은 사용불가

struct Scope {
   // #6
   
   func doSomething() {
      // #7
       g1
       g2
   }
}

doSomething()
