//
//  Wage.swift
//  window-shopper
//
//  Created by Johnny Perdomo on 12/17/17.
//  Copyright © 2017 Johnny Perdomo. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage)) //ceil is to round a number up
    }
}
