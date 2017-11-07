//
//  Doller.swift
//  tdd-by-example-swift
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Dollar: Money, Equatable {
    
    init(_ amount: Int) {
        super.init()
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Dollar {
        // 本の中では一度 return null してから実装を修正するステップを踏んでいるが、
        // Swiftでnullを扱うにはOptionalがあるため、直接記述する。
        return Dollar(amount * multiplier)
    }
    
    // 本の中ではJavaなので、equalsを使っている
    public static func ==(lhs: Dollar, rhs: Dollar) -> Bool {
        return lhs.amount == rhs.amount
    }
}
