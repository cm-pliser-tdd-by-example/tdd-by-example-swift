//
//  Money.swift
//  tdd-by-example-swift
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Money: Equatable, CustomStringConvertible, Expressible {
    
    // 本の中ではprotectedだが、swiftではできないのでpublic扱いに
    let amount: Int
    let currency: String
    
    init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    // 本の中ではJavaなので、equalsを使っている
    public static func ==(lhs: Money, rhs: Money) -> Bool {
        return (lhs.amount == rhs.amount) && (lhs.currency == rhs.currency)
    }
    
    class func doller(_ amount: Int) -> Money {
        return Money(amount, "USD")
    }
    
    class func franc(_ amount: Int) -> Money {
        return Money(amount, "CHF")
    }
    
    func times(_ multiplier: Int) -> Money? {
        return Money(amount * multiplier, currency)
    }
    
    func plus(_ addend: Money) -> Expressible {
        return Money(amount + addend.amount, currency)
    }
    
    var description: String {
        return "\(amount) \(currency)"
    }
}
