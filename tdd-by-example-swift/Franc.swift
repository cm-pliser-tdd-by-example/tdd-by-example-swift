//
//  Franc.swift
//  tdd-by-example-swift
//
//  Created by tanaka.kenji on 2017/11/06.
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Franc: Money {
    
    override init(_ amount: Int, _ currency: String) {
        super.init(amount, currency)
    }
    
    override func times(_ multiplier: Int) -> Money {
        // 本の中では一度 return null してから実装を修正するステップを踏んでいるが、
        // Swiftでnullを扱うにはOptionalがあるため、直接記述する。
        return Money.franc(amount * multiplier)
    }
}
