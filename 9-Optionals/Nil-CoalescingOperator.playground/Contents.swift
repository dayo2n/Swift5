import UIKit

/*:
 # Nil-Coalescing Operator
 */
var msg = " "
var input: String? = "Swift"

if let inputName = input {
    msg = "Hello, " + inputName // 바인딩이 성공하여 이 코드가 실행된다.
} else {
    msg = "Hello, Stranger"
}

print(msg)

// 조건 연산자를 사용하여 더 단순하게 구현해보자
var str = "Hello, " + (input != nil ? input! : "Stranger")
print(str)

// Nil-Coalescing을 이용하면 값이 저장되어있는지 확인하는 코드와 값을 추출하는 코드를 따로 쓸 필요가 없다.



/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/

// 이항연산자이다. 피연산자1은 옵셔널, 피연산자2는 논옵셔널이다.

str = "Hello, " + (input ?? "Stranger")
// 왼쪽 피연산자가 값을 리턴하는지 확인하고, 참이면 언래핑하여 그 값을 리턴한다. 이때 오른쪽 피연산자는 평가되지 않는다.
// 왼쪽 피연산자가 nil을 리턴할 때 오른쪽 피연산자를 평가하고 리턴한다. 따라서 오른쪽 피연산자는 side effect를 발생하지 않아야한다.

print(str)
