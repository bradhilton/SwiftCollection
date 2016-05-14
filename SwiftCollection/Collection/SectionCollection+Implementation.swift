//
//  SectionCollection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionCollection {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldHighlightItem(indexPath.item)
    }
    
    public func didHighlightItemAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didHighlightItem(indexPath.item)
    }
    
    public func didUnhighlightItemAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didUnhighlightItem(indexPath.item)
    }
    
    public func shouldSelectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldSelectItem(indexPath.item)
    }
    
    public func shouldDeselectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldDeselectItem(indexPath.item)
    }
    
    public func didSelectItemAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didSelectItem(indexPath.item)
    }
    
    public func didDeselectItemAtIndexPath(indexPath: NSIndexPath) {
        sections[indexPath.section].didDeselectItem(indexPath.item)
    }
    
    public func willDisplayCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].willDisplayCell(cell, forItem: indexPath.item)
    }
    
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].willDisplaySupplementaryView(view, forElementKind: elementKind, forItem: indexPath.item)
    }
    
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].didEndDisplayingCell(cell, forItem: indexPath.item)
    }
    
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        sections[indexPath.section].didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, forItem: indexPath.item)
    }
    
    public func shouldShowMenuForItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return sections[indexPath.section].shouldShowMenuForItem(indexPath.item)
    }
    
    public func canPerformAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return sections[indexPath.section].canPerformAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    public func performAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        sections[indexPath.section].performAction(action, forItem: indexPath.item, withSender: sender)
    }
    
    // Flow Layout Delegate
    
    public func sizeForItemAtIndexPath(indexPath: NSIndexPath) -> CGSize {
        return sections[indexPath.section].sizeForItem(indexPath.item)
    }
    
    public func insetForSectionAtIndex(section: Int) -> UIEdgeInsets {
        return sections[section].inset
    }
    
    public func minimumLineSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return sections[section].minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return sections[section].minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(section: Int) -> CGSize {
        return sections[section].referenceSizeForHeader
    }
    
    public func referenceSizeForFooterInSection(section: Int) -> CGSize {
        return sections[section].referenceSizeForFooter
    }
    
    // Data Source
    
    public func numberOfItemsInSection(section: Int) -> Int {
        return sections[section].numberOfItems
    }
    
    public func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell {
        return sections[indexPath.section].cellForItem(indexPath.item)
    }
    
    public var numberOfSections: Int {
        return sections.count
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        return sections[indexPath.section].viewForSupplementaryElementOfKind(kind, item: indexPath.item)
    }
    
}
