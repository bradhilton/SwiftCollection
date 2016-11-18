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
    
    func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell {
        return _collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
    }
    
    func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _collectionView.dequeueReusableSupplementaryView(ofKind: elementKind, withReuseIdentifier: identifier, for: indexPath)
    }
    
    func indexPathsForSelectedItemsInCollection(_ collection: CollectionSource) -> [IndexPath]? {
        return collectionView?.indexPathsForSelectedItems
    }
    
    func selectItemAtIndexPath(_ indexPath: IndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition) {
       collectionView?.selectItem(at: indexPath, animated: animated, scrollPosition: scrollPosition)
    }
    
    func deselectItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, animated: Bool) {
       collectionView?.deselectItem(at: indexPath, animated: animated)
    }
    
    func numberOfSectionsInCollection(_ collection: CollectionSource) -> Int {
        return _collectionView.numberOfSections
    }
    
    func numberOfItemsInSection(_ section: Int, inCollection collection: CollectionSource) -> Int {
        return _collectionView.numberOfItems(inSection: section)
    }
    
    func layoutAttributesForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return collectionView?.layoutAttributesForItem(at: indexPath)
    }
    
    func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes? {
        return collectionView?.layoutAttributesForSupplementaryElement(ofKind: kind, at: indexPath)
    }
    
    func indexPathForItemAtPoint(_ point: CGPoint, inCollection collection: CollectionSource) -> IndexPath? {
        return collectionView?.indexPathForItem(at: point)
    }
    
    func indexPathForCell(_ cell: UICollectionViewCell, inCollection collection: CollectionSource) -> IndexPath? {
        return collectionView?.indexPath(for: cell)
    }
    
    func cellForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell? {
        return collectionView?.cellForItem(at: indexPath)
    }
    
    func indexPathsForVisibleItemsInCollection(_ collection: CollectionSource) -> [IndexPath] {
        return collectionView?.indexPathsForVisibleItems ?? []
    }
    
    func scrollToItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool) {
       collectionView?.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
    }
    
    func insertSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
       collectionView?.insertSections(sections)
    }
    
    func deleteSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
       collectionView?.deleteSections(sections)
    }
    
    func reloadSections(_ sections: IndexSet, inCollection collection: CollectionSource) {
       collectionView?.reloadSections(sections)
    }
    
    func moveSection(_ section: Int, toSection newSection: Int, inCollection collection: CollectionSource) {
       collectionView?.moveSection(section, toSection: newSection)
    }
    
    func insertItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
       collectionView?.insertItems(at: indexPaths)
    }
    
    func deleteItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
       collectionView?.deleteItems(at: indexPaths)
    }
    
    func reloadItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource) {
       collectionView?.reloadItems(at: indexPaths)
    }
    
    func moveItemAtIndexPath(_ indexPath: IndexPath, toIndexPath newIndexPath: IndexPath, inCollection collection: CollectionSource) {
       collectionView?.moveItem(at: indexPath, to: newIndexPath)
    }
    
}
