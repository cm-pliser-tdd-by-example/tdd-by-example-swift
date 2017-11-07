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
 [x] equalsの一般化
 [ ] timesの一般化
 */

class MoneyTest: QuickSpec {
    
    override func spec() {
        it("testMultiplication") {
            let five: Money = Money.doller(5)
            expect(five.times(2)).to(equal(Money.doller(10)))
            expect(five.times(3)).to(equal(Money.doller(15)))
        }
        
        it("testEquality") {
            expect(Money.doller(5) == Money.doller(5)).to(beTrue())
            expect(Money.doller(5) == Money.doller(6)).to(beFalse())
            expect(Money.franc(5) == Money.franc(5)).to(beTrue())
            expect(Money.franc(5) == Money.franc(6)).to(beFalse())
            expect(Money.franc(5) == Money.doller(5)).to(beFalse())
        }
        
        it("testFrancMultiplication") {
            let five: Money = Money.franc(5)
            expect(five.times(2)).to(equal(Money.franc(10)))
            expect(five.times(3)).to(equal(Money.franc(15)))
        }
    }
}
