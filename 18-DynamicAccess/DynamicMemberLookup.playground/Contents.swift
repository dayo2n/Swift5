//
//  Mastering Swift
//  Copyright (c) KxCoding <help@kxcoding.com>
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
 # Dynamic Member Lookup
 */
// python과의 호환성을 위한 문법

@dynamicMemberLookup // subscript를 반드시 필요함
struct Person {
   var name: String
   var address: String
    
    subscript(dynamicMember member: String) -> String {
        // argument label은 반드시 dynamicMember, String 형이어야함 (리턴타입은 상관없음)
        switch member {
        case "nameKey":
            return name
        case "addressKey":
            return address
        default:
            return "n/a" // not available
        }
    }
    
}

let p = Person(name: "James", address: "seoul")
p.name
p.address

p[dynamicMember: "nameKey"]
p[dynamicMember: "addressKey"]

p.nameKey
p.addressKey

p.missingKey

// 대상에 접근하는 시점이 런타임이기 때문에
// 도트를 이용해 자동완성이 지원되지 않아 오타가 발생할 수 있는 단점이 있음
