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


//MARK: - task three palindrome
// не самое аккуратное решение, но как есть

let str: String = "А роза упала на лапу Азора"

func polindromString(word: String) -> Bool {
    var copyWord: [String] = []
    
    word.forEach(){
        copyWord.append($0.lowercased())
    }
    
    copyWord.reverse()
    
    for (index, value) in word.enumerated(){
        
        let str: String = String(value)
        if  str.lowercased() != copyWord[index]{
            return false
        } else {
            return true
        }
    }
    return true
}

polindromString(word: str)
