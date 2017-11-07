//
//  MoneyTest.swift
//  tdd-by-example-swiftTests
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Quick
import Nimble
@testable import tdd_by_example_swift

/*
 TODO
 
 [ ] $5 + 10CHF = $10
 [x] $5 * 2 = $10
 [x] amountをprivateにする
 [x] Dollarの副作用どうする?
 [ ] Moneyの丸め処理をどうする?
 [x] equals()
 [ ] hashCode()
 [ ] nullとの等価性比較
 [ ] 他のオブジェクトとの等価生比較
 [x] 5 CHF * 2 = 10 CHF
 [ ] DollarとFrancの比較
 [ ] equalsの一般化
 [ ] timesの一般化
 */

class MoneyTest: QuickSpec {
    
    override func spec() {
        it("testMultiplication") {
            let five: Dollar = Dollar(5)
            expect(five.times(2)).to(equal(Dollar(10)))
            expect(five.times(3)).to(equal(Dollar(15)))
        }
        
        it("testEquality") {
            expect(Dollar(5) == Dollar(5)).to(beTrue())
            expect(Dollar(5) == Dollar(6)).to(beFalse())
            expect(Franc(5) == Franc(5)).to(beTrue())
            expect(Franc(5) == Franc(6)).to(beFalse())
        }
        
        it("testFrancMultiplication") {
            let five: Franc = Franc(5)
            expect(five.times(2)).to(equal(Franc(10)))
            expect(five.times(3)).to(equal(Franc(15)))
        }
    }
}
