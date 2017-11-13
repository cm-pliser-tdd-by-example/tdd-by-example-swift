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
}
