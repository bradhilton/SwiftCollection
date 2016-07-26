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
            guard let collection: CollectionInterface = getAssociatedValueForProperty("collection", ofObject: self) else {
                return self
            }
            return collection
        }
        set {
            setWeakAssociatedValue(newValue as? AnyObject, forProperty: "collection", ofObject: self)
        }
    }
    
    public func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell {
        return _parent.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: NSIndexPath(item: item), inCollection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView {
        return _parent.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: NSIndexPath(item: item), inCollection: self)
    }
    
    public func selectedItemsInSection(section: SectionSource) -> [Int]? {
        return parent?.indexPathsForSelectedItemsInCollection(self)?.map { $0.item }
    }
    
    public func selectItem(item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        parent?.selectItemAtIndexPath(NSIndexPath(item: item), inCollection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItem(item: Int, inSection section: SectionSource, animated: Bool) {
        parent?.deselectItemAtIndexPath(NSIndexPath(item: item), inCollection: self, animated: animated)
    }
    
    public func numberOfItemsInSection(section: SectionSource) -> Int {
        return _parent.numberOfItemsInSection(0, inCollection: self)
    }
    
    public func layoutAttributesForItem(item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForItemAtIndexPath(NSIndexPath(item: item), inCollection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: NSIndexPath(item: item), inCollection: self)
    }
    
    public func itemAtPoint(point: CGPoint, inSection section: SectionSource) -> Int? {
        return parent?.indexPathForItemAtPoint(point, inCollection: self)?.item
    }
    
    public func itemForCell(cell: UICollectionViewCell, inSection section: SectionSource) -> Int? {
        return parent?.indexPathForCell(cell, inCollection: self)?.item
    }
    
    public func cellForItem(item: Int, inSection section: SectionSource) -> UICollectionViewCell? {
        return parent?.cellForItemAtIndexPath(NSIndexPath(item: item), inCollection: self)
    }
    
    public func visibleItemsInSection(section: SectionSource) -> [Int] {
        return _parent.indexPathsForVisibleItemsInCollection(self).map { $0.item }
    }
    
    public func scrollToItem(item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        parent?.scrollToItemAtIndexPath(NSIndexPath(item: item), inCollection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertSection(section: SectionSource) {
        parent?.insertSections(NSIndexSet(index: 0), inCollection: self)
    }
    
    public func deleteSection(section: SectionSource) {
        parent?.deleteSections(NSIndexSet(index: 0), inCollection: self)
    }
    
    public func reloadSection(section: SectionSource) {
        parent?.reloadSections(NSIndexSet(index: 0), inCollection: self)
    }
    
    public func insertItems(items: [Int], inSection section: SectionSource) {
        parent?.insertItemsAtIndexPaths(items.map { NSIndexPath(item: $0) }, inCollection: self)
    }
    
    public func deleteItems(items: [Int], inSection section: SectionSource) {
        parent?.deleteItemsAtIndexPaths(items.map { NSIndexPath(item: $0) }, inCollection: self)
    }
    
    public func reloadItems(items: [Int], inSection section: SectionSource) {
        parent?.reloadItemsAtIndexPaths(items.map { NSIndexPath(item: $0) }, inCollection: self)
    }
    
    public func moveItem(item: Int, to newPosition: Int, inSection section: SectionSource) {
        parent?.moveItemAtIndexPath(NSIndexPath(item: item), toIndexPath: NSIndexPath(item: newPosition), inCollection: self)
    }
    
}
