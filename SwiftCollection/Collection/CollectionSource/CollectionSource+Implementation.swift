//
//  Collection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension CollectionSource {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(_ indexPath: IndexPath) -> Bool { return true }
    public func didHighlightItemAtIndexPath(_ indexPath: IndexPath) {}
    public func didUnhighlightItemAtIndexPath(_ indexPath: IndexPath) {}
    public func shouldSelectItemAtIndexPath(_ indexPath: IndexPath) -> Bool { return true }
    public func shouldDeselectItemAtIndexPath(_ indexPath: IndexPath) -> Bool { return true }
    public func didSelectItemAtIndexPath(_ indexPath: IndexPath) {}
    public func didDeselectItemAtIndexPath(_ indexPath: IndexPath) {}
    public func willDisplayCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {}
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath) {}
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {}
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath) {}
    public func shouldShowMenuForItemAtIndexPath(_ indexPath: IndexPath) -> Bool { return false }
    public func canPerformAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) -> Bool { return false }
    public func performAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) {}
    
    public func transitionLayoutForOldLayout(_ fromLayout: UICollectionViewLayout, newLayout toLayout: UICollectionViewLayout) -> UICollectionViewTransitionLayout {
        return UICollectionViewTransitionLayout(currentLayout: fromLayout, nextLayout: toLayout)
    }
    
    // Flow Layout Delegate
    
    fileprivate var flowLayout: UICollectionViewFlowLayout {
        return parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItemAtIndexPath(_ indexPath: IndexPath) -> CGSize {
        return flowLayout.itemSize
    }
    
    public func insetForSectionAtIndex(_ section: Int) -> UIEdgeInsets {
        return flowLayout.sectionInset
    }
    
    public func minimumLineSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return flowLayout.minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return flowLayout.minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(_ section: Int) -> CGSize {
        return flowLayout.headerReferenceSize
    }
    
    public func referenceSizeForFooterInSection(_ section: Int) -> CGSize {
        return flowLayout.footerReferenceSize
    }
    
    // Data Source
    
    public func numberOfItemsInSection(_ section: Int) -> Int {
        return 0
    }
    
    public func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public var numberOfSections: Int {
        return 1
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
