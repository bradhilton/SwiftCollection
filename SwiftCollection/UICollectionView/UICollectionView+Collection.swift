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
            guard let bridge: Bridge = getAssociatedValue(key: "collection", object: self) else { return nil }
            return bridge.collection
        }
        set {
            set(associatedValue: Bridge(collectionView: self, collection: newValue), key: "collection", object: self)
        }
    }
    
}
