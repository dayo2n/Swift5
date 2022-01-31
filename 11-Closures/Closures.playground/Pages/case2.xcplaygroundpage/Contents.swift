//: [Previous](@previous)

import Foundation

print("Start")
//print("End")

// 코드의 실행을 지연시켜보자
DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
    print("End")
}
