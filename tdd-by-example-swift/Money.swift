//
//  Money.swift
//  tdd-by-example-swift
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Money: Equatable {
    
    // 本の中ではprotectedだが、swiftではできないのでpublic扱いに
    let amount: Int
    let currency: String
    
    init(_ amount: Int, _ currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    // 本の中ではJavaなので、equalsを使っている
    public static func ==(lhs: Money, rhs: Money) -> Bool {
        return (lhs.amount == rhs.amount) &&
            String(describing: type(of: lhs)) == String(describing: type(of: rhs))
    }
    
    class func doller(_ amount: Int) -> Money {
        return Dollar(amount, "USD")
    }
    
    class func franc(_ amount: Int) -> Money {
        return Franc(amount, "CHF")
    }
    
    func times(_ multiplier: Int) -> Money {
        fatalError() // abstract
    }
}
