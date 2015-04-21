//
//  UITextField+Conversion.swift
//  This is a 
//  Assignment2V2
//
//  Created by Comp1601 on 2015-02-13.
//  Copyright (c) 2015 Comp1601. All rights reserved.
//

import UIKit

/* 
 * This is my extension: used for converting binary, hexadecimal, and decimal. It provides 
 *  suppost for workig with binary, hexadecimal and decimal
 *
 */

extension String {
    var hexaToInt : Int {
        return Int(strtoul(self, nil, 16))
    }
    var hexaToDouble : Double {
        return Double(strtoul(self, nil, 16))
    }
    var hexaToBinary : String {
        return String(hexaToInt,radix: 2)
    }
    var intToHexa : String {
        return String(toInt()!, radix:16)
    }
    var intToBinary: String {
        return String(toInt()!, radix:2)
    }
    var binaryToInt: Int {
        return Int(strtoul(self, nil, 2))
    }
    var binaryToDouble: Double {
        return Double(strtoul(self, nil, 2))
    }
    var binaryToHexa: String{
        return String(binaryToInt, radix:16)
    }

}

extension Int {
    var binaryString: String {
        return String(self, radix:2)
    }
    var hexaString: String {
        return String(self, radix:16)
    }
    var doubleValue: Double {
        return Double(self)
    }
}


