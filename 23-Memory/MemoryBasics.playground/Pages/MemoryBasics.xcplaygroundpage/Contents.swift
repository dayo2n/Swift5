import UIKit

/*:
 # Memory Basics
 */

/*
 MSB(Most Significant Bit): 최상위 비트, Sign Bit로 사용 (0이면 양, 1이면 음)
 
 LSB(Least Significant Bit): 최하위 비트
 Data Bit: 데이터를 저장하는 비트
 
 
 ## 2's Complement (2의 보수)
 Original Bit -> ~(Bitwise not: 비트가 1이면 0, 0이면 1로 바꿈) -> +1
 ex) 00010110
 ~ : 11101001
 +1: 11101010
 
 Bit -> Byte (8Bit) -> Kilobyte (1024 B) -> Megabyte (1024 KB) -> Gigabyte (1024 MB)
 -> Terabyte (1024 GB) -> Petabyte (1024 TB) -> Exabyte (1024 PB) -> Zettabyte (1024 EB) -> Yottabyte (1024 ZB)
 그래서 보통 32 bit 컴퓨터는 4GB 제한, 64bit 컴퓨터는 16EB, 그러나 메모리 관리 방식에 따라 보통은 더 작은 메모리공간 이용 가능
 
 
## Stack
 LIFO (Last In First Out)
 할당할 공간의 크기를 예측 가능.
 값 형식이 스택에 저장된다.
 
 
## Heap
 동적으로 할당되는 특성때문에 할당할 공간의 크기를 예측하기 어렵다.
 
 생성 시점과 제거 시점이 정해져있지않아 직접 코드를 통해 생성 및 제거해야 한다.
 제거하지 않으면 프로그램이 종료될 때까지 메모리를 차지하고 있어 불필요하게 메모리 공간을 많이 차지하면 메모리 누수(Memory Leaks)가 발생할 수 있다.
 
 참조 형식은 데이터를 힙에 저장하고 힙에 저장된 주소값을 스택에 저장한다.
 실제 값에 접근할 때는 스택에 저장된 힙 주소를 통해 접근한다.
 값을 이용하지 않을 것이라면 두 공간에 차지하고 있는 메모리 공간을 제거해 메모리 누수를 방지해야 한다.
 */
