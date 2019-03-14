//
//  _Collection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

public protocol _Collection : class {
    var parent: ParentInterface? { get set }
}

extension _Collection {
    
    public var parent: ParentInterface? {
        get {
            return getAssociatedValue(key: "parent", object: self)
        }
        set {
            set(weakAssociatedValue: newValue as AnyObject, key: "parent", object: self)
        }
    }
    
    var _parent: ParentInterface {
        return parent ?? Bridge(collectionView: UICollectionView())
    }
    
}


