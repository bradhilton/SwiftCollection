//
//  CollectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol CollectionSource : _Collection {
    
    // Delegate
    
    func shouldHighlightItemAtIndexPath(_ indexPath: IndexPath) -> Bool
    func didHighlightItemAtIndexPath(_ indexPath: IndexPath)
    func didUnhighlightItemAtIndexPath(_ indexPath: IndexPath)
    func shouldSelectItemAtIndexPath(_ indexPath: IndexPath) -> Bool
    func shouldDeselectItemAtIndexPath(_ indexPath: IndexPath) -> Bool
    func didSelectItemAtIndexPath(_ indexPath: IndexPath)
    func didDeselectItemAtIndexPath(_ indexPath: IndexPath)
    func willDisplayCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath)
    func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath)
    func didEndDisplayingCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath)
    func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath)
    func transitionLayoutForOldLayout(_ fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
    
    // Flow Layout Delegate
    
    func sizeForItemAtIndexPath(_ indexPath: IndexPath) -> CGSize
    func insetForSectionAtIndex(_ section: Int) -> UIEdgeInsets
    func minimumLineSpacingForSectionAtIndex(_ section: Int) -> CGFloat
    func minimumInteritemSpacingForSectionAtIndex(_ section: Int) -> CGFloat
    func referenceSizeForHeaderInSection(_ section: Int) -> CGSize
    func referenceSizeForFooterInSection(_ section: Int) -> CGSize
    
    // Data Source
    
    func numberOfItemsInSection(_ section: Int) -> Int
    func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell
    var numberOfSections: Int { get }
    func viewForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView
    
}
