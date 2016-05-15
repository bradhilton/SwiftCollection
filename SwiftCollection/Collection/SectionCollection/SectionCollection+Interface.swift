//
//  SectionCollection+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionCollection {
    
    public func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell {
        return delegate(section) { self.parent?.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: NSIndexPath(item: item, section: $0), inCollection: self) } ?? UICollectionViewCell()
    }
    
    public func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView {
            return delegate(section) { self.parent?.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: NSIndexPath(item: item, section: $0), inCollection: self) } ?? UICollectionReusableView()
    }
    
    public func selectedItemsInSection(section: SectionSource) -> [Int]? {
        return itemsForSection(section, fromIndexPaths: parent?.indexPathsForSelectedItemsInCollection(self))
    }
    
    public func selectItem(item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        delegate(section) { self.parent?.selectItemAtIndexPath(NSIndexPath(item: item, section: $0), inCollection: self, animated: animated, scrollPosition: scrollPosition) }
    }
    
    public func deselectItem(item: Int, inSection section: SectionSource, animated: Bool) {
        delegate(section) { self.parent?.deselectItemAtIndexPath(NSIndexPath(item: item, section: $0), inCollection: self, animated: animated) }
    }
    
    public func numberOfItemsInSection(section: SectionSource) -> Int {
        return section.numberOfItems
    }
    
    public func layoutAttributesForItem(item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return delegate(section) { self.parent?.layoutAttributesForItemAtIndexPath(NSIndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return delegate(section) { self.parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: NSIndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func itemAtPoint(point: CGPoint, inSection section: SectionSource) -> Int? {
        return itemForSection(section, fromIndexPath: parent?.indexPathForItemAtPoint(point, inCollection: self))
    }
    
    public func itemForCell(cell: UICollectionViewCell, inSection section: SectionSource) -> Int? {
         return itemForSection(section, fromIndexPath: parent?.indexPathForCell(cell, inCollection: self))
    }
    
    public func cellForItem(item: Int, inSection section: SectionSource) -> UICollectionViewCell? {
        return delegate(section) { self.parent?.cellForItemAtIndexPath(NSIndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func visibleItemsInSection(section: SectionSource) -> [Int] {
        return itemsForSection(section, fromIndexPaths: parent?.indexPathsForVisibleItemsInCollection(self)) ?? []
    }
    
    public func scrollToItem(item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        delegate(section) { self.parent?.scrollToItemAtIndexPath(NSIndexPath(item: item, section: $0), inCollection: self, atScrollPosition: scrollPosition, animated: animated) }
    }
    
    public func insertSection(section: SectionSource) {
        delegate(section) { self.parent?.insertSections(NSIndexSet(index: $0), inCollection: self) }
    }
    
    public func deleteSection(section: SectionSource) {
        delegate(section) { self.parent?.deleteSections(NSIndexSet(index: $0), inCollection: self) }
    }
    
    public func reloadSection(section: SectionSource) {
        delegate(section) { self.parent?.reloadSections(NSIndexSet(index: $0), inCollection: self) }
    }
    
    public func insertItems(items: [Int], inSection section: SectionSource) {
        self.parent?.insertItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func deleteItems(items: [Int], inSection section: SectionSource) {
        self.parent?.deleteItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func reloadItems(items: [Int], inSection section: SectionSource) {
        self.parent?.reloadItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func moveItem(item: Int, to newPosition: Int, inSection section: SectionSource) {
        delegate(section) { self.parent?.moveItemAtIndexPath(NSIndexPath(item: item, section: $0), toIndexPath: NSIndexPath(item: newPosition, section: $0), inCollection: self) }
    }
    
}
