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
            return getAssociatedValueForProperty("section", ofObject: self)
        }
        set {
            setWeakAssociatedValue(newValue as? AnyObject, forProperty: "section", ofObject: self)
        }
    }
    
    var _section: SectionInterface {
        return section ?? EmptySection()
    }
    
}
