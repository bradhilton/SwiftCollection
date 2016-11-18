//
//  ItemSection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension ItemSection {
    
    // Delegate
    
    public func shouldHighlightItem(_ item: Int) -> Bool {
        return items[item].shouldHighlight
    }
    
    public func didHighlightItem(_ item: Int) {
        items[item].didHighlight()
    }
    
    public func didUnhighlightItem(_ item: Int) {
        items[item].didUnhighlight()
    }
    
    public func shouldSelectItem(_ item: Int) -> Bool {
        return items[item].shouldSelect
    }
    
    public func shouldDeselectItem(_ item: Int) -> Bool {
        return items[item].shouldDeselect
    }
    
    public func didSelectItem(_ item: Int) {
        items[item].didSelect()
    }
    
    public func didDeselectItem(_ item: Int) {
        items[item].didDeselect()
    }
    
    public func willDisplayCell(_ cell: UICollectionViewCell, forItem item: Int) {
        items[item].willDisplayCell(cell)
    }
    
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {
        items[item].willDisplaySupplementaryView(view, forElementKind: elementKind)
    }
    
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItem item: Int) {
        items[item].didEndDisplayingCell(cell)
    }
    
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {
        items[item].didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind)
    }
    
    public func shouldShowMenuForItem(_ item: Int) -> Bool {
        return items[item].shouldShowMenu
    }
    
    public func canPerformAction(_ action: Selector, forItem item: Int, withSender sender: Any?) -> Bool {
        return items[item].canPerformAction(action, withSender: sender)
    }
    
    public func performAction(_ action: Selector, forItem item: Int, withSender sender: Any?) {
        return items[item].performAction(action, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItem(_ item: Int) -> CGSize {
        return items[item].size
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return items.count
    }
    
    public func cellForItem(_ item: Int) -> UICollectionViewCell {
        return items[item].cell
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, item: Int) -> UICollectionReusableView {
        return items[item].viewForSupplementaryElementOfKind(kind)
    }
    
}
