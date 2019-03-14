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
            guard let section: SectionInterface = getAssociatedValue(key: "section", object: self) else {
                return self
            }
            return section
        }
        set {
            set(weakAssociatedValue: newValue as AnyObject, key: "section", object: self)
        }
    }
    
    public func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forItem item: ItemSource) -> UICollectionViewCell {
        return _collection.dequeueReusableCellWithReuseIdentifier(identifier, forItem: 0, inSection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forItem item: ItemSource) -> UICollectionReusableView {
        return _collection.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forItem: 0, inSection: self)
    }
    
    public func selectItem(_ item: ItemSource?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) {
        collection?.selectItem(0, inSection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItem(_ item: ItemSource, animated: Bool) {
        collection?.deselectItem(0, inSection: self, animated: animated)
    }
    
    public func layoutAttributesForItem(_ item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return collection?.layoutAttributesForItem(0, inSection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atItem item: ItemSource) -> UICollectionViewLayoutAttributes? {
        return collection?.layoutAttributesForSupplementaryElementOfKind(kind, atItem: 0, inSection: self)
    }
    
    public func cellForItem(_ item: ItemSource) -> UICollectionViewCell? {
        return collection?.cellForItem(0, inSection: self)
    }
    
    public func scrollToItem(_ item: ItemSource, atScrollPosition scrollPosition: UICollectionView.ScrollPosition, animated: Bool) {
        collection?.scrollToItem(0, inSection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertItem(_ item: ItemSource) {
        collection?.insertItems([0], inSection: self)
    }
    
    public func deleteItem(_ item: ItemSource) {
        collection?.deleteItems([0], inSection: self)
    }
    
    public func reloadItem(_ item: ItemSource) {
        collection?.reloadItems([0], inSection: self)
    }
    
}
