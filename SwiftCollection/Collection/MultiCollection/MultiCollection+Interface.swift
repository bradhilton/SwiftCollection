//
//  MultiCollection+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension MultiCollection {
    
    public var collectionViewLayout: UICollectionViewLayout {
        get {
            return _parent.collectionViewLayout
        }
        set {
            parent?.collectionViewLayout = newValue
        }
    }
    
    public var backgroundView: UIView? {
        get {
            return parent?.backgroundView
        }
        set {
            parent?.backgroundView = newValue
        }
    }
    
    public func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) {
        parent?.registerClass(cellClass, forCellWithReuseIdentifier: identifier)
    }
    
    public func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String) {
        parent?.registerNib(nib, forCellWithReuseIdentifier: identifier)
    }
    
    public func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) {
        parent?.registerClass(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
    }
    
    public func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) {
        parent?.registerNib(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
    }
    
    public func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell {
        return _parent.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _parent.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public var allowsSelection: Bool {
        get {
            return _parent.allowsSelection
        }
        set {
            parent?.allowsSelection = newValue
        }
    }
    
    public var allowsMultipleSelection: Bool {
        get {
            return _parent.allowsMultipleSelection
        }
        set {
            parent?.allowsMultipleSelection = newValue
        }
    }
    
    public func indexPathsForSelectedItemsInCollection(collection: CollectionSource) -> [NSIndexPath]? {
        return indexPathsForCollection(collection, indexPaths: parent?.indexPathsForSelectedItemsInCollection(self))
    }
    
    public func selectItemAtIndexPath(indexPath: NSIndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
        parent?.selectItemAtIndexPath(optionalIndexPathFromCollection(collection, indexPath: indexPath), inCollection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, animated: Bool) {
        parent?.deselectItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self, animated: animated)
    }
    
    public func reloadData() {
        parent?.reloadData()
    }
    
    public func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool) {
        parent?.setCollectionViewLayout(layout, animated: animated)
    }
    
    public func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?) {
        parent?.setCollectionViewLayout(layout, animated: animated, completion: completion)
    }
    
    public func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout {
        return _parent.startInteractiveTransitionToCollectionViewLayout(layout, completion: completion)
    }
    
    public func finishInteractiveTransition() {
        parent?.finishInteractiveTransition()
    }
    
    public func cancelInteractiveTransition() {
        parent?.cancelInteractiveTransition()
    }
    
    public func numberOfSectionsInCollection(collection: CollectionSource) -> Int {
        return collection.numberOfSections
    }
    
    public func numberOfItemsInSection(section: Int, inCollection collection: CollectionSource) -> Int {
        return _parent.numberOfItemsInSection(sectionFromCollection(collection, section: section), inCollection: self)
    }
    
    public func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func indexPathForItemAtPoint(point: CGPoint, inCollection collection: CollectionSource) -> NSIndexPath? {
        return optionalIndexPathForCollection(collection, indexPath: parent?.indexPathForItemAtPoint(point, inCollection: self))
    }
    
    public func indexPathForCell(cell: UICollectionViewCell, inCollection collection: CollectionSource) -> NSIndexPath? {
        return optionalIndexPathForCollection(collection, indexPath: parent?.indexPathForCell(cell, inCollection: self))
    }
    
    public func cellForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell? {
        return parent?.cellForItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public var visibleCells: [UICollectionViewCell] {
        return parent?.visibleCells ?? []
    }
    
    public func indexPathsForVisibleItemsInCollection(collection: CollectionSource) -> [NSIndexPath] {
        return indexPathsForCollection(collection, indexPaths: parent?.indexPathsForVisibleItemsInCollection(self)) ?? []
    }
    
    public func scrollToItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
        parent?.scrollToItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
        parent?.insertSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func deleteSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
        parent?.deleteSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func reloadSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
        parent?.reloadSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func moveSection(section: Int, toSection newSection: Int, inCollection collection: CollectionSource) {
        parent?.moveSection(sectionFromCollection(collection, section: section), toSection: sectionFromCollection(collection, section: newSection), inCollection: self)
    }
    
    public func insertItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
        parent?.insertItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
        parent?.deleteItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
        parent?.reloadItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath, inCollection collection: CollectionSource) {
        parent?.moveItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), toIndexPath: indexPathFromCollection(collection, indexPath: newIndexPath), inCollection: self)
    }
    
    public func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?) {
        parent?.performBatchUpdates(updates, completion: completion)
    }
    
}
