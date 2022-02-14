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
 # Strings and Characters
 */
let s = "String"
let c : Character = "C"

//let emptyChar: Character = "" //아무것도 없는 빈 문자는 문자열String로 인식됨.
// Character로 저장하고 싶다면 공백을 포함하도록 함
let emptyChar: Character = " "
var emptyString = " " // 빈문자 아님
emptyString.count

emptyString = "" // 이게 빈문자
emptyString.count

// 생성자로 빈 문자열을 생성해보자
let emptyString2 = String()
/*:
 ## String Types
 */
//String은 구조체, 값 형식 : Swift String
// 참조형으로 쓰고싶다면 NSString을 이용, Foundation String
var nsstr : NSString = "str"

//let swiftStr : String = nsstr // error!
// 두 자료형은 호환되지만 바로 변환되지는 않음 => type casting이 필요
let swiftStr : String = nsstr as String
nsstr = swiftStr as NSString



/*:
 ## Mutability
 */
// 문자열의 가변성 var : let
let immutableStr = "str"
// immutableStr = "new str" // 불가변

var mutableStr = "str"
mutableStr = "new str"

/*:
 ## Unicode
 */

let str = "Swift String"

str.utf8
str.utf16

var thumbUp = "🍯" // ctrl + cmd + spcae를 누르면 이모티콘 창이 뜸
thumbUp = "\u{1F970}"

//🥰
//하트가 달린 웃는 얼굴
//유니코드: U+1F970, UTF-8: F0 9F A5 B0
