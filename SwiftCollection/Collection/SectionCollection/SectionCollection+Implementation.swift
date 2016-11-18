//
//  SectionCollection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionCollection {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].shouldHighlightItem(indexPath.item)
    }
    
    public func didHighlightItemAtIndexPath(_ indexPath: IndexPath) {
        sections[indexPath.section].didHighlightItem(indexPath.item)
    }
    
    public func didUnhighlightItemAtIndexPath(_ indexPath: IndexPath) {
        sections[indexPath.section].didUnhighlightItem(indexPath.item)
    }
    
    public func shouldSelectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].shouldSelectItem(indexPath.item)
    }
    
    public func shouldDeselectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].shouldDeselectItem(indexPath.item)
    }
    
    public func didSelectItemAtIndexPath(_ indexPath: IndexPath) {
        sections[indexPath.section].didSelectItem(indexPath.item)
    }
    
    public func didDeselectItemAtIndexPath(_ indexPath: IndexPath) {
        sections[indexPath.section].didDeselectItem(indexPath.item)
    }
    
    public func willDisplayCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        sections[indexPath.section].willDisplayCell(cell, forItem: indexPath.item)
    }
    
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath) {
        sections[indexPath.section].willDisplaySupplementaryView(view, forElementKind: elementKind, forItem: indexPath.item)
    }
    
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        sections[indexPath.section].didEndDisplayingCell(cell, forItem: indexPath.item)
    }
    
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath) {
        sections[indexPath.section].didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, forItem: indexPath.item)
    }
    
    public func shouldShowMenuForItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return sections[indexPath.section].shouldShowMenuForItem(indexPath.item)
    }
    
    public func canPerformAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return sections[indexPath.section].canPerformAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    public func performAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) {
        sections[indexPath.section].performAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItemAtIndexPath(_ indexPath: IndexPath) -> CGSize {
        return sections[indexPath.section].sizeForItem(indexPath.item)
    }
    
    public func insetForSectionAtIndex(_ section: Int) -> UIEdgeInsets {
        return sections[section].inset
    }
    
    public func minimumLineSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return sections[section].minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return sections[section].minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(_ section: Int) -> CGSize {
        return sections[section].referenceSizeForHeader
    }
    
    public func referenceSizeForFooterInSection(_ section: Int) -> CGSize {
        return sections[section].referenceSizeForFooter
    }
    
    // Data Source
    
    public func numberOfItemsInSection(_ section: Int) -> Int {
        return sections[section].numberOfItems
    }
    
    public func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell {
        return sections[indexPath.section].cellForItem(indexPath.item)
    }
    
    public var numberOfSections: Int {
        return sections.count
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView {
        return sections[indexPath.section].viewForSupplementaryElementOfKind(kind, item: indexPath.item)
    }
    
}
