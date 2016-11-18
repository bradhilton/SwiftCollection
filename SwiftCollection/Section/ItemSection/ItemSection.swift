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
            return getAssociatedValue(key: "items", object: self, initialValue: OrderedObjectSet())
        }
        set {
            items.subtracting(newValue).forEach { $0.section = nil }
            newValue.subtracting(items).forEach { $0.section = self }
            set(associatedValue: newValue, key: "items", object: self)
        }
    }
    
    func index(_ item: ItemSource?) -> Int? {
        return items.index { $0 === item }
    }
    
    func delegate<T>(_ item: ItemSource, handler: (Int) -> T?) -> T? {
        guard let index = index(item) else { return nil }
        return handler(index)
    }
    
}
