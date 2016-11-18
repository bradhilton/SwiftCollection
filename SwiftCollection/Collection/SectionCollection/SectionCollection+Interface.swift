//
//  SectionCollection+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionCollection {
    
    public func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell {
        return delegate(section) { self.parent?.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: IndexPath(item: item, section: $0), inCollection: self) } ?? UICollectionViewCell()
    }
    
    public func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView {
            return delegate(section) { self.parent?.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: IndexPath(item: item, section: $0), inCollection: self) } ?? UICollectionReusableView()
    }
    
    public func selectedItemsInSection(_ section: SectionSource) -> [Int]? {
        return itemsForSection(section, fromIndexPaths: parent?.indexPathsForSelectedItemsInCollection(self))
    }
    
    public func selectItem(_ item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        delegate(section) { self.parent?.selectItemAtIndexPath(IndexPath(item: item, section: $0), inCollection: self, animated: animated, scrollPosition: scrollPosition) }
    }
    
    public func deselectItem(_ item: Int, inSection section: SectionSource, animated: Bool) {
        delegate(section) { self.parent?.deselectItemAtIndexPath(IndexPath(item: item, section: $0), inCollection: self, animated: animated) }
    }
    
    public func numberOfItemsInSection(_ section: SectionSource) -> Int {
        return section.numberOfItems
    }
    
    public func layoutAttributesForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return delegate(section) { self.parent?.layoutAttributesForItemAtIndexPath(IndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes? {
        return delegate(section) { self.parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: IndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func itemAtPoint(_ point: CGPoint, inSection section: SectionSource) -> Int? {
        return itemForSection(section, fromIndexPath: parent?.indexPathForItemAtPoint(point, inCollection: self))
    }
    
    public func itemForCell(_ cell: UICollectionViewCell, inSection section: SectionSource) -> Int? {
         return itemForSection(section, fromIndexPath: parent?.indexPathForCell(cell, inCollection: self))
    }
    
    public func cellForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewCell? {
        return delegate(section) { self.parent?.cellForItemAtIndexPath(IndexPath(item: item, section: $0), inCollection: self) }
    }
    
    public func visibleItemsInSection(_ section: SectionSource) -> [Int] {
        return itemsForSection(section, fromIndexPaths: parent?.indexPathsForVisibleItemsInCollection(self)) ?? []
    }
    
    public func scrollToItem(_ item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        delegate(section) { self.parent?.scrollToItemAtIndexPath(IndexPath(item: item, section: $0), inCollection: self, atScrollPosition: scrollPosition, animated: animated) }
    }
    
    public func insertSection(_ section: SectionSource) {
        delegate(section) { self.parent?.insertSections(IndexSet(integer: $0), inCollection: self) }
    }
    
    public func deleteSection(_ section: SectionSource) {
        delegate(section) { self.parent?.deleteSections(IndexSet(integer: $0), inCollection: self) }
    }
    
    public func reloadSection(_ section: SectionSource) {
        delegate(section) { self.parent?.reloadSections(IndexSet(integer: $0), inCollection: self) }
    }
    
    public func insertItems(_ items: [Int], inSection section: SectionSource) {
        self.parent?.insertItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func deleteItems(_ items: [Int], inSection section: SectionSource) {
        self.parent?.deleteItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func reloadItems(_ items: [Int], inSection section: SectionSource) {
        self.parent?.reloadItemsAtIndexPaths(indexPathsFromItems(items, inSection: section), inCollection: self)
    }
    
    public func moveItem(_ item: Int, to newPosition: Int, inSection section: SectionSource) {
        delegate(section) { self.parent?.moveItemAtIndexPath(IndexPath(item: item, section: $0), toIndexPath: IndexPath(item: newPosition, section: $0), inCollection: self) }
    }
    
}
