//
//  NSIndexPath+Extensions.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/12/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension NSIndexPath {
    
    convenience init(item: Int = 0, section: Int = 0) {
        self.init(forItem: item, inSection: section)
    }
    
    convenience init?(item: Int? = 0, section: Int? = 0) {
        guard let item = item, section = section else {
            return nil
        }
        self.init(forItem: item, inSection: section)
    }
    
}
