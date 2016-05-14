//
//  ItemSource+SectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension ItemSource where Self : SectionSource {
    
    // Delegate
    
    public func shouldHighlightItem(item: Int) -> Bool {
        return shouldHighlight
    }
    
    public func didHighlightItem(item: Int) {
        didHighlight()
    }
    
    public func didUnhighlightItem(item: Int) {
        didUnhighlight()
    }
    
    public func shouldSelectItem(item: Int) -> Bool {
        return shouldSelect
    }
    
    public func shouldDeselectItem(item: Int) -> Bool {
        return shouldDeselect
    }
    
    public func didSelectItem(item: Int) {
        didSelect()
    }
    
    public func didDeselectItem(item: Int) {
        didDeselect()
    }
    
    public func willDisplayCell(cell: UICollectionViewCell, forItem item: Int) {
        willDisplayCell(cell)
    }
    
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {
        willDisplaySupplementaryView(view, forElementKind: elementKind)
    }
    
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItem item: Int) {
        didEndDisplayingCell(cell)
    }
    
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {
        didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind)
    }
    
    public func shouldShowMenuForItem(item: Int) -> Bool {
        return shouldShowMenu
    }
    
    public func canPerformAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) -> Bool {
        return canPerformAction(action, withSender: sender)
    }
    
    public func performAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) {
        performAction(action, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItem(item: Int) -> CGSize {
        return size
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return 1
    }
    
    public func cellForItem(item: Int) -> UICollectionViewCell {
        return cell
    }
    
}
