//
//  Collection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension CollectionSource {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(indexPath: NSIndexPath) -> Bool { return true }
    public func didHighlightItemAtIndexPath(indexPath: NSIndexPath) {}
    public func didUnhighlightItemAtIndexPath(indexPath: NSIndexPath) {}
    public func shouldSelectItemAtIndexPath(indexPath: NSIndexPath) -> Bool { return true }
    public func shouldDeselectItemAtIndexPath(indexPath: NSIndexPath) -> Bool { return true }
    public func didSelectItemAtIndexPath(indexPath: NSIndexPath) {}
    public func didDeselectItemAtIndexPath(indexPath: NSIndexPath) {}
    public func willDisplayCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {}
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath) {}
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {}
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath) {}
    public func shouldShowMenuForItemAtIndexPath(indexPath: NSIndexPath) -> Bool { return false }
    public func canPerformAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool { return false }
    public func performAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {}
    
    public func transitionLayoutForOldLayout(fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
        return UICollectionViewTransitionLayout(currentLayout: fromLayout, nextLayout: toLayout)
    }
    
    // Flow Layout Delegate
    
    private var flowLayout: UICollectionViewFlowLayout {
        return parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItemAtIndexPath(indexPath: NSIndexPath) -> CGSize {
        return flowLayout.itemSize
    }
    
    public func insetForSectionAtIndex(section: Int) -> UIEdgeInsets {
        return flowLayout.sectionInset
    }
    
    public func minimumLineSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return flowLayout.minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return flowLayout.minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(section: Int) -> CGSize {
        return flowLayout.headerReferenceSize
    }
    
    public func referenceSizeForFooterInSection(section: Int) -> CGSize {
        return flowLayout.footerReferenceSize
    }
    
    // Data Source
    
    public func numberOfItemsInSection(section: Int) -> Int {
        return 0
    }
    
    public func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public var numberOfSections: Int {
        return 1
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
