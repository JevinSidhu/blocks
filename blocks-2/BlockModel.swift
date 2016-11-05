//
//  BlockModel.swift
//  blocks-2
//
//  Created by Jevin Sidhu on 2016-11-05.
//  Copyright © 2016 Jevin Sidhu. All rights reserved.
//

import Foundation
import UIKit

struct Block {
    var blockTotal: Int
    
    mutating func countToTen() {
        blockTotal -= 1
        print(blockTotal)
    }

}


