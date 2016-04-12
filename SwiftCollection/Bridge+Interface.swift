//
//  Bridge+Interface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension Bridge : ParentInterface {
    
    var collectionViewLayout: UICollectionViewLayout {
        get {
            return _collectionView.collectionViewLayout
        }
        set {
            collectionView?.collectionViewLayout = newValue
        }
    }
    
    var backgroundView: UIView? {
        get {
            return collectionView?.backgroundView
        }
        set {
            collectionView?.backgroundView = newValue
        }
    }
    
    func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) {
        collectionView?.registerClass(cellClass, forCellWithReuseIdentifier: identifier)
    }
    
    func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String) {
        collectionView?.registerNib(nib, forCellWithReuseIdentifier: identifier)
    }
    
    func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) {
        collectionView?.registerClass(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier)
    }
    
    func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) {
        collectionView?.registerNib(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
    }
    
    func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell {
        return _collectionView.dequeueReusableCellWithReuseIdentifier(identifier, forIndexPath: indexPath)
    }
    
    func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _collectionView.dequeueReusableSupplementaryViewOfKind(elementKind, withReuseIdentifier: identifier, forIndexPath: indexPath)
    }
    
    var allowsSelection: Bool {
        get {
            return _collectionView.allowsSelection
        }
        set {
            collectionView?.allowsSelection = newValue
        }
    }
    
    var allowsMultipleSelection: Bool {
        get {
            return _collectionView.allowsMultipleSelection
        }
        set {
            collectionView?.allowsMultipleSelection = newValue
        }
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
    
    func reloadData() {
        collectionView?.reloadData()
    }
    
    func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool) {
        collectionView?.setCollectionViewLayout(layout, animated: animated)
    }
    
    func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?) {
        collectionView?.setCollectionViewLayout(layout, animated: animated, completion: completion)
    }
    
    func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout {
        return _collectionView.startInteractiveTransitionToCollectionViewLayout(layout, completion: completion)
    }
    
    func finishInteractiveTransition() {
        collectionView?.finishInteractiveTransition()
    }
    
    func cancelInteractiveTransition() {
        collectionView?.cancelInteractiveTransition()
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
    
    var visibleCells: [UICollectionViewCell] {
        return collectionView?.visibleCells() ?? []
    }
    
    func indexPathsForVisibleItemsInCollection(collection: CollectionSource) -> [NSIndexPath] {
        return collectionView?.indexPathsForVisibleItems() ?? []
    }
    
    func supplementaryViewForElementKind(elementKind: String, atIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView {
        return _collectionView.supplementaryViewForElementKind(elementKind, atIndexPath: indexPath)
    }
    
    func visibleSupplementaryViewsOfKind(elementKind: String) -> [UICollectionReusableView] {
        return collectionView?.visibleSupplementaryViewsOfKind(elementKind) ?? []
    }
    
    func indexPathsForVisibleSupplementaryElementsOfKind(elementKind: String, inCollection collection: CollectionSource) -> [NSIndexPath] {
        return collectionView?.indexPathsForVisibleSupplementaryElementsOfKind(elementKind) ?? []
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
    
    func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?) {
        collectionView?.performBatchUpdates(updates, completion: completion)
    }
    
}
