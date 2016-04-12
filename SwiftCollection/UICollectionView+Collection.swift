//
//  UICollectionView+Collection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

extension UICollectionView {
    
    public weak var collection: CollectionSource? {
        get {
            guard let bridge: Bridge = getAssociatedValueForProperty("collection", ofObject: self) else { return nil }
            return bridge.collection
        }
        set {
            setAssociatedValue(Bridge(collectionView: self, collection: newValue), forProperty: "collection", ofObject: self)
        }
    }
    
}
