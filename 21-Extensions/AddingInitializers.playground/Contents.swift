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
import Foundation

/*:
 # Adding Initializers
 */

extension Date {
    init?(year: Int, month: Int, day: Int) {
        let cal = Calendar.current
        var comp = DateComponents()
        comp.year = year
        comp.month = month
        comp.day = day
        
        guard let date = cal.date(from: comp) else { return nil }
        
        self = date
    }
}

Date(year: 1998, month: 3, day: 12)



extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
    }
}

UIColor(red: 0, green: 0, blue: 255)





// default initializer, memberwise initializer
struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size {
    // extension이 아니라 구조체 안에 작성하면 아래 두 개 에러발생 -> 파라미터가 없거나 두 개인 생성자를 따로 구현해야 함.
    init(value: Double) {
        width = value
        height = value
    }
}
Size()
Size(width: 12, height: 34)
