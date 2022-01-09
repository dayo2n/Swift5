import UIKit

/*:
 # Short-circuit Evaluation 단락 평가
 */
// false &&
//true ||

var a = 1
var b = 1
func updateLeft() -> Bool {
    a += 1
    return true
}

func updateRight() -> Bool {
    b += 1
    return true
}

if updateLeft() || updateRight() {
    // 스위프트는 논리식을 평가할 때 결과를 얻는데 필요한 최소한의 식만 계산한다.
    // 이 예제에서는 updateRight()에 대해서는 평가하지 않는다.
    // 이것이 '단락 평가'
}

a
b

/*:
 # Side Effect
 */
// 코드의 실행결과로 값 또는 상태가 변경되는 것.
// updateLeft()또는 updateRight()는 호출될 때 a 또는 b의 값을 바꾸므로 side effect가 발생하는 것이다.
// 단순히 a 또는 b를 호출하는 경우는 값의 변경이 없으므로 side effect가 발생하지 않는다.

// Side Effect를 발생시키지 않으려면?

let resultA = updateLeft()
let resultB = updateRight()

if resultA && resultB {
    
}

a
b
