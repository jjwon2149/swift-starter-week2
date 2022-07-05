
import Foundation


//Step 2: 내 번호와 맞추어보기!

var lottoWinningNumbers: Set<Int> = []

func drawLottoWinnigNumbers() {
    while lottoWinningNumbers.count < 6 {
        lottoWinningNumbers.insert(Int.random(in: 1...45))
    }
}

var myLottoNumbers: Set<Int> = []

myLottoNumbers.insert(2)
myLottoNumbers.insert(3)
myLottoNumbers.insert(5)
myLottoNumbers.insert(10)
myLottoNumbers.insert(21)
myLottoNumbers.insert(28)

func checkMyLottoNumbers() {
    if lottoWinningNumbers.intersection(myLottoNumbers).count != 0 {
        print("축하합니다! 겹치는 번호는 \(lottoWinningNumbers.intersection(myLottoNumbers)) 입니다!")
    }
    else {
        print("아쉽지만 겹치는 번호가 없습니다.")
    }
}

drawLottoWinnigNumbers()
print("이번주 당첨번호는 \(lottoWinningNumbers) 입니다")
print("이번주 내번호는 \(myLottoNumbers) 입니다")
checkMyLottoNumbers()
