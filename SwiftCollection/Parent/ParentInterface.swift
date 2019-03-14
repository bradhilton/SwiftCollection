//
//  ParentInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol ParentInterface : class {
    var collectionView: UICollectionView? { get }
    func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionReusableView
    func indexPathsForSelectedItemsInCollection(_ collection: CollectionSource) -> [IndexPath]?
    func selectItemAtIndexPath(_ indexPath: IndexPath?, inCollection collection: CollectionSource, animated: Bool, scrollPosition: UICollectionView.ScrollPosition)
    func deselectItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, animated: Bool)
    func numberOfSectionsInCollection(_ collection: CollectionSource) -> Int
    func numberOfItemsInSection(_ section: Int, inCollection collection: CollectionSource) -> Int
    func layoutAttributesForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewLayoutAttributes?
    func indexPathForItemAtPoint(_ point: CGPoint, inCollection collection: CollectionSource) -> IndexPath?
    func indexPathForCell(_ cell: UICollectionViewCell, inCollection collection: CollectionSource) -> IndexPath?
    func cellForItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource) -> UICollectionViewCell?
    func indexPathsForVisibleItemsInCollection(_ collection: CollectionSource) -> [IndexPath]
    func scrollToItemAtIndexPath(_ indexPath: IndexPath, inCollection collection: CollectionSource, atScrollPosition scrollPosition: UICollectionView.ScrollPosition, animated: Bool)
    func insertSections(_ sections: IndexSet, inCollection collection: CollectionSource)
    func deleteSections(_ sections: IndexSet, inCollection collection: CollectionSource)
    func reloadSections(_ sections: IndexSet, inCollection collection: CollectionSource)
    func moveSection(_ section: Int, toSection newSection: Int, inCollection collection: CollectionSource)
    func insertItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource)
    func deleteItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource)
    func reloadItemsAtIndexPaths(_ indexPaths: [IndexPath], inCollection collection: CollectionSource)
    func moveItemAtIndexPath(_ indexPath: IndexPath, toIndexPath newIndexPath: IndexPath, inCollection collection: CollectionSource)
}
