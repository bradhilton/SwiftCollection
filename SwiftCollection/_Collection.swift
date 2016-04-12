//
//  _Collection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

public protocol _Collection : class {
    weak var parent: ParentInterface? { get set }
}

extension _Collection {
    
    public var parent: ParentInterface? {
        get {
            return getAssociatedValueForProperty("parent", ofObject: self)
        }
        set {
            setWeakAssociatedValue(newValue as? AnyObject, forProperty: "parent", ofObject: self)
        }
    }
    
    var _parent: ParentInterface {
        return parent ?? Bridge(collectionView: UICollectionView())
    }
    
}


