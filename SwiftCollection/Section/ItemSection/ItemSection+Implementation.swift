//
//  ItemSection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension ItemSection {
    
    // Delegate
    
    public func shouldHighlightItem(item: Int) -> Bool {
        return items[item].shouldHighlight
    }
    
    public func didHighlightItem(item: Int) {
        items[item].didHighlight()
    }
    
    public func didUnhighlightItem(item: Int) {
        items[item].didUnhighlight()
    }
    
    public func shouldSelectItem(item: Int) -> Bool {
        return items[item].shouldSelect
    }
    
    public func shouldDeselectItem(item: Int) -> Bool {
        return items[item].shouldDeselect
    }
    
    public func didSelectItem(item: Int) {
        items[item].didSelect()
    }
    
    public func didDeselectItem(item: Int) {
        items[item].didDeselect()
    }
    
    public func willDisplayCell(cell: UICollectionViewCell, forItem item: Int) {
        items[item].willDisplayCell(cell)
    }
    
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {
        items[item].willDisplaySupplementaryView(view, forElementKind: elementKind)
    }
    
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItem item: Int) {
        items[item].didEndDisplayingCell(cell)
    }
    
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {
        items[item].didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind)
    }
    
    public func shouldShowMenuForItem(item: Int) -> Bool {
        return items[item].shouldShowMenu
    }
    
    public func canPerformAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) -> Bool {
        return items[item].canPerformAction(action, withSender: sender)
    }
    
    public func performAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) {
        return items[item].performAction(action, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItem(item: Int) -> CGSize {
        return items[item].size
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return items.count
    }
    
    public func cellForItem(item: Int) -> UICollectionViewCell {
        return items[item].cell
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, item: Int) -> UICollectionReusableView {
        return items[item].viewForSupplementaryElementOfKind(kind)
    }
    
}
