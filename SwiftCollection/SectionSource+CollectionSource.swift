//
//  SectionSource+CollectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionSource where Self : CollectionSource {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldHighlightItem(indexPath.item)
    }
    
    public func didHighlightItemAtIndexPath(indexPath: NSIndexPath) {
        didHighlightItem(indexPath.item)
    }
    
    public func didUnhighlightItemAtIndexPath(indexPath: NSIndexPath) {
        didUnhighlightItem(indexPath.item)
    }
    
    public func shouldSelectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldSelectItem(indexPath.item)
    }
    
    public func shouldDeselectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldDeselectItem(indexPath.item)
    }
    
    public func didSelectItemAtIndexPath(indexPath: NSIndexPath) {
        didSelectItem(indexPath.item)
    }
    
    public func didDeselectItemAtIndexPath(indexPath: NSIndexPath) {
        didDeselectItem(indexPath.item)
    }
    
    public func willDisplayCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        willDisplayCell(cell, forItem: indexPath.item)
    }
    
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        willDisplaySupplementaryView(view, forElementKind: elementKind, forItem: indexPath.item)
    }
    
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        didEndDisplayingCell(cell, forItem: indexPath.item)
    }
    
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, forItem: indexPath.item)
    }
    
    public func shouldShowMenuForItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return shouldShowMenuForItem(indexPath.item)
    }
    
    public func canPerformAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return canPerformAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    public func performAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        performAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItemAtIndexPath(indexPath: NSIndexPath) -> CGSize {
        return sizeForItem(indexPath.item)
    }
    
    public func insetForSectionAtIndex(section: Int) -> UIEdgeInsets {
        return inset
    }
    
    public func minimumLineSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(section: Int) -> CGSize {
        return referenceSizeForHeader
    }
    
    public func referenceSizeForFooterInSection(section: Int) -> CGSize {
        return referenceSizeForFooter
    }
    
    // Data Source
    
    public func numberOfItemsInSection(section: Int) -> Int {
        return numberOfItems
    }
    
    public func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell {
        return cellForItem(indexPath.item)
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        return viewForSupplementaryElementOfKind(kind, item: indexPath.item)
    }
    
}
