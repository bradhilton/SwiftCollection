//
//  ParentInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol ParentInterface : class {
    var collectionViewLayout: UICollectionViewLayout { get set }
    var backgroundView: UIView? { get set }
    func registerClass(cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String)
    func registerNib(nib: UINib?, forCellWithReuseIdentifier identifier: String)
    func registerClass(viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String)
    func registerNib(nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String)
    func dequeueReusableCellWithReuseIdentifier(identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView
    var allowsSelection: Bool { get set }
    var allowsMultipleSelection: Bool { get set }
    func indexPathsForSelectedItemsInCollection(collection: CollectionSource) -> [NSIndexPath]?
    func selectItemAtIndexPath(indexPath: NSIndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
    func deselectItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, animated: Bool)
    func reloadData()
    func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool)
    func setCollectionViewLayout(layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)?)
    func startInteractiveTransitionToCollectionViewLayout(layout: UICollectionViewLayout, completion: UICollectionViewLayoutInteractiveTransitionCompletion?) -> UICollectionViewTransitionLayout
    func finishInteractiveTransition()
    func cancelInteractiveTransition()
    func numberOfSectionsInCollection(collection: CollectionSource) -> Int
    func numberOfItemsInSection(section: Int, inCollection collection: CollectionSource) -> Int
    func layoutAttributesForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes?
    func indexPathForItemAtPoint(point: CGPoint, inCollection collection: CollectionSource) -> NSIndexPath?
    func indexPathForCell(cell: UICollectionViewCell, inCollection collection: CollectionSource) -> NSIndexPath?
    func cellForItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell?
    var visibleCells: [UICollectionViewCell] { get }
    func indexPathsForVisibleItemsInCollection(collection: CollectionSource) -> [NSIndexPath]
    func scrollToItemAtIndexPath(indexPath: NSIndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
    func insertSections(sections: NSIndexSet, inCollection collection: CollectionSource)
    func deleteSections(sections: NSIndexSet, inCollection collection: CollectionSource)
    func reloadSections(sections: NSIndexSet, inCollection collection: CollectionSource)
    func moveSection(section: Int, toSection newSection: Int, inCollection collection: CollectionSource)
    func insertItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource)
    func deleteItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource)
    func reloadItemsAtIndexPaths(indexPaths: [NSIndexPath], inCollection collection: CollectionSource)
    func moveItemAtIndexPath(indexPath: NSIndexPath, toIndexPath newIndexPath: NSIndexPath, inCollection collection: CollectionSource)
    func performBatchUpdates(updates: (() -> Void)?, completion: ((Bool) -> Void)?)
}