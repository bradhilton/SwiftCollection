//
//  Bridge.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

class Bridge : NSObject {
    
    weak var collectionView: UICollectionView?
    weak var collection: CollectionSource?
    
    init?(collectionView: UICollectionView, collection: CollectionSource?) {
        super.init()
        guard collection != nil else { return nil }
        self.collectionView = collectionView
        self.collection = collection
        self.collectionView?.dataSource = self
        self.collectionView?.delegate = self
    }
    
    init(collectionView: UICollectionView) {
        super.init()
        self.collectionView = collectionView
    }
    
    var _collectionView: UICollectionView {
        return collectionView ?? UICollectionView()
    }
    
    class EmptyCollection : CollectionSource {}
    
    var _collection: CollectionSource {
        return collection ?? EmptyCollection()
    }
    
}
