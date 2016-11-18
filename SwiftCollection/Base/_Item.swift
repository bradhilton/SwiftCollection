//
//  _Item.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues
import OrderedObjectSet

class EmptySection : ItemSection {
    var rows = OrderedObjectSet<ItemSource>()
}

public protocol _Item : class {
    weak var section: SectionInterface? { get set }
}

extension _Item {
    
    public var section: SectionInterface? {
        get {
            return getAssociatedValue(key: "section", object: self)
        }
        set {
            set(weakAssociatedValue: newValue as AnyObject, key: "section", object: self)
        }
    }
    
    var _section: SectionInterface {
        return section ?? EmptySection()
    }
    
}
