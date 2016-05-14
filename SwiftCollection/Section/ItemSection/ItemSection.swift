//
//  ItemSection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues
import OrderedObjectSet

public protocol ItemSection : SectionSource, SectionInterface {
    var items: OrderedObjectSet<ItemSource> { get set }
}

extension ItemSection {
    
    public var items: OrderedObjectSet<ItemSource> {
        get {
            return getAssociatedValueForProperty("items", ofObject: self, withInitialValue: OrderedObjectSet())
        }
        set {
            items.subtract(newValue).forEach { $0.section = nil }
            newValue.subtract(items).forEach { $0.section = self }
            setAssociatedValue(newValue, forProperty: "items", ofObject: self)
        }
    }
    
    func index(item: ItemSource?) -> Int? {
        return items.indexOf { $0 === item }
    }
    
    func delegate<T>(item: ItemSource, handler: (Int) -> T?) -> T? {
        guard let index = index(item) else { return nil }
        return handler(index)
    }
    
}
