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
 [ ] $5 * 2 = $10
 [ ] amountをprivateにする
 [ ] Dollerの副作用どうする?
 [ ] Moneyの丸め処理をどうする?
 */

class MoneyTest: QuickSpec {
    
    override func spec() {
        it("testMultiplication") {
            let five: Doller = Doller(5)
            five.times(2)
            expect(five.amount).to(equal(10))
        }
    }
}
