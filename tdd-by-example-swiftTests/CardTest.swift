//
//  CardTest.swift
//  tdd-by-example-swiftTests
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Quick
import Nimble
@testable import tdd_by_example_swift

class CardTest: QuickSpec {
    
    override func spec() {
        describe("カードのイニシャライザで") {
            context("正しいスートと数字を渡したとき") {
                it("インスタンスが生成できること") {
                    let card = Card(suit: .hearts, number: 4)
                    expect(card).to(beAKindOf(Card.self))
                }
            }
        }
    }
}
