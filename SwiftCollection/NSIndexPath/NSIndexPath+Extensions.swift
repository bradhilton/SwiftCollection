//
//  NSIndexPath+Extensions.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/12/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension IndexPath {
    
    init(item: Int) {
        self.init(item: item, section: 0)
    }
    
    init?(item: Int? = 0, section: Int? = 0) {
        guard let item = item, let section = section else {
            return nil
        }
        self.init(item: item, section: section)
    }
    
}
