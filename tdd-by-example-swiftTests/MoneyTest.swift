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
 [ ] amountをprivateにする
 [x] Dollarの副作用どうする?
 [ ] equals()
 [ ] Moneyの丸め処理をどうする?
 */

class MoneyTest: QuickSpec {
    
    override func spec() {
        it("testMultiplication") {
            let five: Dollar = Dollar(5)
            var product = five.times(2)
            expect(product.amount).to(equal(10))
            product = five.times(3)
            expect(product.amount).to(equal(15))
        }
        
        it("testEquality") {
            expect(Dollar(5).equals(Dollar(5))).to(beTrue())
            expect(Dollar(5).equals(Dollar(6))).to(beFalse())
        }
    }
}
