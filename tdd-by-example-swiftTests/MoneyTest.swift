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
 [ ] Dollarの副作用どうする?
 [ ] Moneyの丸め処理をどうする?
 */

class MoneyTest: QuickSpec {
    
    override func spec() {
        it("testMultiplication") {
            let five: Dollar = Dollar(5)
            five.times(2)
            expect(five.amount).to(equal(10))
        }
    }
}
