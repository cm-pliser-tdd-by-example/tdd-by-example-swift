//
//  Franc.swift
//  tdd-by-example-swift
//
//  Created by tanaka.kenji on 2017/11/06.
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

struct Franc: Equatable {
    
    private let amount: Int
    
    init(_ amount: Int) {
        self.amount = amount
    }
    
    func times(_ multiplier: Int) -> Franc {
        // 本の中では一度 return null してから実装を修正するステップを踏んでいるが、
        // Swiftでnullを扱うにはOptionalがあるため、直接記述する。
        return Franc(amount * multiplier)
    }
    
    // 本の中ではJavaなので、equalsを使っている
    public static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
}
