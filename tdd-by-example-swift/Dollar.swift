//
//  Money.swift
//  tdd-by-example-swift
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Dollar {
    
    var amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        // 本の中では一度 return null してから実装を修正するステップを踏んでいるが、
        // Swiftでnullを扱うにはOptionalがあるため、直接記述する。
        return Dollar(amount * multiplier)
    }
    
    // Swiftの場合、本来はEquatableプロトコルを使うべき
    func equals(_ dollar: Dollar) -> Bool {
        return amount == dollar.amount
    }
}
