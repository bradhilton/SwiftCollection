//
//  Bridge+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension Bridge : ParentInterface {
    
    var _collectionView: UICollectionView {
        return collectionView ?? UICollectionView()
    }
    
    func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell {
        return _collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath)
    }
    
    func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _collectionView.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: indexPath)
    }
    
    func indexPathsForSelectedItemsInCollection(collection: CollectionSource) -> [NSIndexPath]? {
        return collectionView?.indexPathsForSelectedItems()
    }
    
    func selectItemAtIndexPath(indexPath: NSIndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
       collectionView?.selectItemAtIndexPath(indexPath, animated: animated, scrollPosition: scrollPosition)
    }
    
    func deselectItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, animated: Bool) {
       collectionView?.deselectItemAtIndexPath(indexPath, animated: animated)
    }
    
    func numberOfSectionsInCollection(collection: CollectionSource) -> Int {
        return _collectionView.numberOfSections()
    }
    
    func numberOfItemsInSection(section: Int, inCollection collection: CollectionSource) -> Int {
        return _collectionView.numberOfItemsInSection(section)
    }
    
    func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return collectionView?.layoutAttributesForItemAtIndexPath(indexPath)
    }
    
    func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return collectionView?.layoutAttributesForSupplementaryElementOfKind(kind, atIndexPath: indexPath)
    }
    
    func indexPathForItemAtPoint(point: CGPoint, inCollection collection: CollectionSource) -> NSIndexPath? {
        return collectionView?.indexPathForItemAtPoint(point)
    }
    
    func indexPathForCell(cell: UICollectionViewCell, inCollection collection: CollectionSource) -> NSIndexPath? {
        return collectionView?.indexPathForCell(cell)
    }
    
    func cellForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell? {
        return collectionView?.cellForItemAtIndexPath(indexPath)
    }
    
    func indexPathsForVisibleItemsInCollection(collection: CollectionSource) -> [NSIndexPath] {
        return collectionView?.indexPathsForVisibleItems() ?? []
    }
    
    func scrollToItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
       collectionView?.scrollToItemAtIndexPath(indexPath, atScrollPosition: scrollPosition, animated: animated)
    }
    
    func insertSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
       collectionView?.insertSections(sections)
    }
    
    func deleteSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
       collectionView?.deleteSections(sections)
    }
    
    func reloadSections(sections: NSIndexSet, inCollection collection: CollectionSource) {
       collectionView?.reloadSections(sections)
    }
    
    func moveSection(section: Int, toSection newSection: Int, inCollection collection: CollectionSource) {
       collectionView?.moveSection(section, toSection: newSection)
    }
    
    func insertItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
       collectionView?.insertItemsAtIndexPaths(indexPaths)
    }
    
    func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
       collectionView?.deleteItemsAtIndexPaths(indexPaths)
    }
    
    func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource) {
       collectionView?.reloadItemsAtIndexPaths(indexPaths)
    }
    
    func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath, inCollection collection: CollectionSource) {
       collectionView?.moveItemAtIndexPath(indexPath, toIndexPath: newIndexPath)
    }
    
}
