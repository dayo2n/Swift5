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
 # Associated Values
 ![associated-values](associated-values.png)
 */

// enumeration case에 연관값을 함께 저장
enum VideoInterface {
    case dvi(width: Int, height: Int) // 위에 보기에서는 un-named tuple로 저장하고있는데, named tuple로도 저장 가능
    case hdmi(Int, Int, Double, Bool)
    case displayPort(CGSize) // CGSize 구조체로
}

var input = VideoInterface.dvi(width: 2048, height: 1536)

switch input {
case .dvi(width: 2048, height: 1536):
    print("dvi 2048 x 1536")
case .dvi(2048, _):
    print("dvi 2048 x Any")
case .dvi:
    print("dvi")
case .hdmi(let width, let height, let version, let audioEnabled):
    print("hdmi \(width) x \(height)")
case let .displayPort(size):
    print("dp")
}

input = .hdmi(3840, 2160, 2.1, true) // 열거형의 타입은 같으므로 다른 형식의 Associated values의 값을 넣는 것은 상관없음 오류안남
