//
//  SectionSource+CollectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

extension SectionSource where Self : CollectionSource, Self : CollectionInterface {
    
    public var collection: CollectionInterface? {
        get {
            guard let collection: CollectionInterface = getAssociatedValue(key: "collection", object: self) else {
                return self
            }
            return collection
        }
        set {
            set(weakAssociatedValue: newValue as AnyObject, key: "collection", object: self)
        }
    }
    
    public func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell {
        return _parent.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: IndexPath(item: item), inCollection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView {
        return _parent.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: IndexPath(item: item), inCollection: self)
    }
    
    public func selectedItemsInSection(_ section: SectionSource) -> [Int]? {
        return parent?.indexPathsForSelectedItemsInCollection(self)?.map { $0.item }
    }
    
    public func selectItem(_ item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        parent?.selectItemAtIndexPath(IndexPath(item: item), inCollection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItem(_ item: Int, inSection section: SectionSource, animated: Bool) {
        parent?.deselectItemAtIndexPath(IndexPath(item: item), inCollection: self, animated: animated)
    }
    
    public func numberOfItemsInSection(_ section: SectionSource) -> Int {
        return _parent.numberOfItemsInSection(0, inCollection: self)
    }
    
    public func layoutAttributesForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForItemAtIndexPath(IndexPath(item: item), inCollection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: IndexPath(item: item), inCollection: self)
    }
    
    public func itemAtPoint(_ point: CGPoint, inSection section: SectionSource) -> Int? {
        return parent?.indexPathForItemAtPoint(point, inCollection: self)?.item
    }
    
    public func itemForCell(_ cell: UICollectionViewCell, inSection section: SectionSource) -> Int? {
        return parent?.indexPathForCell(cell, inCollection: self)?.item
    }
    
    public func cellForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewCell? {
        return parent?.cellForItemAtIndexPath(IndexPath(item: item), inCollection: self)
    }
    
    public func visibleItemsInSection(_ section: SectionSource) -> [Int] {
        return _parent.indexPathsForVisibleItemsInCollection(self).map { $0.item }
    }
    
    public func scrollToItem(_ item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        parent?.scrollToItemAtIndexPath(IndexPath(item: item), inCollection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertSection(_ section: SectionSource) {
        parent?.insertSections(IndexSet(integer: 0), inCollection: self)
    }
    
    public func deleteSection(_ section: SectionSource) {
        parent?.deleteSections(IndexSet(integer: 0), inCollection: self)
    }
    
    public func reloadSection(_ section: SectionSource) {
        parent?.reloadSections(IndexSet(integer: 0), inCollection: self)
    }
    
    public func insertItems(_ items: [Int], inSection section: SectionSource) {
        parent?.insertItemsAtIndexPaths(items.map { IndexPath(item: $0) }, inCollection: self)
    }
    
    public func deleteItems(_ items: [Int], inSection section: SectionSource) {
        parent?.deleteItemsAtIndexPaths(items.map { IndexPath(item: $0) }, inCollection: self)
    }
    
    public func reloadItems(_ items: [Int], inSection section: SectionSource) {
        parent?.reloadItemsAtIndexPaths(items.map { IndexPath(item: $0) }, inCollection: self)
    }
    
    public func moveItem(_ item: Int, to newPosition: Int, inSection section: SectionSource) {
        parent?.moveItemAtIndexPath(IndexPath(item: item), toIndexPath: IndexPath(item: newPosition), inCollection: self)
    }
    
}
