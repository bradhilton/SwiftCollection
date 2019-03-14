//
//  _Section.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

public protocol _Section : class {
    var collection: CollectionInterface? { get set }
}

extension _Section {
    
    public var collection: CollectionInterface? {
        get {
            return getAssociatedValue(key: "collection", object: self)
        }
        set {
            set(weakAssociatedValue: newValue as AnyObject, key: "collection", object: self)
        }
    }
    
    var _collection: CollectionInterface {
        return collection!
    }
    
}

