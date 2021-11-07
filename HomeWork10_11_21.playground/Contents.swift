import UIKit

// разложеие числа на простые множетели

//MARK: - method
func isPrimeNumber(number: Int) -> Bool {
    
    guard number > 1 else { return false}
    
    for i in 2..<number {
        if number % i == 0 {
            return false
        }
    }
    return true
}

//MARK: - solution
func multiplicities(number: Int, divider: Int = 2) {
    
    guard number > 1 else { return }
    
    if isPrimeNumber(number: number) {
       print("\(number)")
    } else if number % divider == 0 {
        let result = number / divider
        print(divider)
        multiplicities(number: result)
    } else {
        let buferD = divider
        multiplicities(number: number,divider: buferD + 1)
    }
}

multiplicities(number: 54)

//MARK: - task task second

var number = 2

func numberInPow(number: inout Int, pow: Int) {
    var temp = 1
    for _ in 1...pow {
       temp *= number
    }
    number = temp
}

numberInPow(number: &number, pow:4)
number

