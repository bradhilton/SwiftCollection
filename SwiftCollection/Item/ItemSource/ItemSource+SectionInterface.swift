//
//  ItemSource+SectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

extension ItemSource where Self : SectionSource, Self : SectionInterface {
    
    public var section: SectionInterface? {
        get {
            return getAssociatedValueForProperty("section", ofObject: self) ?? self
        }
        set {
            setWeakAssociatedValue(newValue as? AnyObject, forProperty: "section", ofObject: self)
        }
    }
    
    public func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: ItemSource) -> UICollectionViewCell {
        return _collection.dequeueReusableCellWithReuseIdentifier(identifier, forItem: 0, inSection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: ItemSource) -> UICollectionReusableView {
        return _collection.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forItem: 0, inSection: self)
    }
    
    public func selectItem(item: ItemSource?, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        collection?.selectItem(0, inSection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItem(item: ItemSource, animated: Bool) {
        collection?.deselectItem(0, inSection: self, animated: animated)
    }
    
    public func layoutAttributesForItem(item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return collection?.layoutAttributesForItem(0, inSection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return collection?.layoutAttributesForSupplementaryElementOfKind(kind, atItem: 0, inSection: self)
    }
    
    public func cellForItem(item: ItemSource) -> UICollectionViewCell? {
        return collection?.cellForItem(0, inSection: self)
    }
    
    public func scrollToItem(item: ItemSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        collection?.scrollToItem(0, inSection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertItem(item: ItemSource) {
        collection?.insertItems([0], inSection: self)
    }
    
    public func deleteItem(item: ItemSource) {
        collection?.deleteItems([0], inSection: self)
    }
    
    public func reloadItem(item: ItemSource) {
        collection?.reloadItems([0], inSection: self)
    }
    
}
