//
//  Money.swift
//  tdd-by-example-swift
//
//  Copyright © 2017年 cm-pliser. All rights reserved.
//

import Foundation

class Money: Equatable {
    
    // 本の中ではprotectedだが、swiftではできないのでpublic扱いに
    var amount: Int = 0
    
    // 本の中ではJavaなので、equalsを使っている
    public static func ==(lhs: Money, rhs: Money) -> Bool {
        return (lhs.amount == rhs.amount) &&
            String(describing: type(of: lhs)) == String(describing: type(of: rhs))
    }
    
    class func doller(_ amount: Int) -> Money {
        return Dollar(amount)
    }
    
    class func franc(_ amount: Int) -> Money {
        return Franc(amount)
    }
    
    func times(_ multiplier: Int) -> Money {
        fatalError() // abstract
    }
    
    var currency: String {
        fatalError() // abstract
    }
}
