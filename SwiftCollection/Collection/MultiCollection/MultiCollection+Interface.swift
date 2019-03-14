//
//  MultiCollection+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension MultiCollection {
    
    public var collectionView: UICollectionView? {
        return parent?.collectionView
    }
    
    public func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell {
        return _parent.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _parent.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func indexPathsForSelectedItemsInCollection(_ collection: CollectionSource) -> [IndexPath]? {
        return indexPathsForCollection(collection, indexPaths: parent?.indexPathsForSelectedItemsInCollection(self))
    }
    
    public func selectItemAtIndexPath(_ indexPath: IndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) {
        parent?.selectItemAtIndexPath(optionalIndexPathFromCollection(collection, indexPath: indexPath), inCollection: self, animated: animated, scrollPosition: scrollPosition)
    }
    
    public func deselectItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, animated: Bool) {
        parent?.deselectItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self, animated: animated)
    }
    
    public func numberOfSectionsInCollection(_ collection: CollectionSource) -> Int {
        return collection.numberOfSections
    }
    
    public func numberOfItemsInSection(_ section: Int, inCollection collection: CollectionSource) -> Int {
        return _parent.numberOfItemsInSection(sectionFromCollection(collection, section: section), inCollection: self)
    }
    
    public func layoutAttributesForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return parent?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func indexPathForItemAtPoint(_ point: CGPoint, inCollection collection: CollectionSource) -> IndexPath? {
        return optionalIndexPathForCollection(collection, indexPath: parent?.indexPathForItemAtPoint(point, inCollection: self))
    }
    
    public func indexPathForCell(_ cell: UICollectionViewCell, inCollection collection: CollectionSource) -> IndexPath? {
        return optionalIndexPathForCollection(collection, indexPath: parent?.indexPathForCell(cell, inCollection: self))
    }
    
    public func cellForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell? {
        return parent?.cellForItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self)
    }
    
    public func indexPathsForVisibleItemsInCollection(_ collection: CollectionSource) -> [IndexPath] {
        return indexPathsForCollection(collection, indexPaths: parent?.indexPathsForVisibleItemsInCollection(self)) ?? []
    }
    
    public func scrollToItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionView.ScrollPosition, animated: Bool) {
        parent?.scrollToItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), inCollection: self, atScrollPosition: scrollPosition, animated: animated)
    }
    
    public func insertSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
        parent?.insertSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func deleteSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
        parent?.deleteSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func reloadSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
        parent?.reloadSections(indexSetFromCollection(collection, indexSet: sections), inCollection: self)
    }
    
    public func moveSection(_ section: Int, toSection newSection: Int, inCollection collection: CollectionSource) {
        parent?.moveSection(sectionFromCollection(collection, section: section), toSection: sectionFromCollection(collection, section: newSection), inCollection: self)
    }
    
    public func insertItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
        parent?.insertItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func deleteItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
        parent?.deleteItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func reloadItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
        parent?.reloadItemsAtIndexPaths(indexPathsFromCollection(collection, indexPaths: indexPaths), inCollection: self)
    }
    
    public func moveItemAtIndexPath(_ indexPath: IndexPath, toIndexPath newIndexPath: IndexPath, inCollection collection: CollectionSource) {
        parent?.moveItemAtIndexPath(indexPathFromCollection(collection, indexPath: indexPath), toIndexPath: indexPathFromCollection(collection, indexPath: newIndexPath), inCollection: self)
    }
    
}
