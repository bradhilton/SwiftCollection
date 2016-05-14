//
//  CollectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol CollectionSource : _Collection {
    
    // Delegate
    
    func shouldHighlightItemAtIndexPath(indexPath: NSIndexPath) -> Bool
    func didHighlightItemAtIndexPath(indexPath: NSIndexPath)
    func didUnhighlightItemAtIndexPath(indexPath: NSIndexPath)
    func shouldSelectItemAtIndexPath(indexPath: NSIndexPath) -> Bool
    func shouldDeselectItemAtIndexPath(indexPath: NSIndexPath) -> Bool
    func didSelectItemAtIndexPath(indexPath: NSIndexPath)
    func didDeselectItemAtIndexPath(indexPath: NSIndexPath)
    func willDisplayCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
    func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath)
    func didEndDisplayingCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath)
    func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath)
    func shouldShowMenuForItemAtIndexPath(indexPath: NSIndexPath) -> Bool
    func canPerformAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool
    func performAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?)
    func transitionLayoutForOldLayout(fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout
    
    // Flow Layout Delegate
    
    func sizeForItemAtIndexPath(indexPath: NSIndexPath) -> CGSize
    func insetForSectionAtIndex(section: Int) -> UIEdgeInsets
    func minimumLineSpacingForSectionAtIndex(section: Int) -> CGFloat
    func minimumInteritemSpacingForSectionAtIndex(section: Int) -> CGFloat
    func referenceSizeForHeaderInSection(section: Int) -> CGSize
    func referenceSizeForFooterInSection(section: Int) -> CGSize
    
    // Data Source
    
    func numberOfItemsInSection(section: Int) -> Int
    func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell
    var numberOfSections: Int { get }
    func viewForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView
    
}