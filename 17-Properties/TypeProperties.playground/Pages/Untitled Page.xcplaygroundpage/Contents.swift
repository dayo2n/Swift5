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
 # Type Properties
 ## Stored Type Properties
 ![type1](type1.png)
 ![type2](type2.png)
 */
// 저장 형식 속성. 속성에 최초로 접근할 때 초기화됨

class Math {
    static let pi = 3.14
}

let m = Math()
//m.pi // error! pi는 형식 속성이므로 형식 이름을 통해 접근해야함

Math.pi // 지연 저장 속성과 같음

/*:
 ## Computed Type Properties
 ![type3](type3.png)
 ![type4](type4.png)
 */

enum Weekday: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: Weekday {
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return Weekday(rawValue: weekday)!
    }
}

Weekday.today
