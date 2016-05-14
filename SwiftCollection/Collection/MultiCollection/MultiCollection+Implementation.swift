//
//  MultiCollection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension MultiCollection {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldHighlightItemAtIndexPath($1) } ?? true
    }
    
    public func didHighlightItemAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didHighlightItemAtIndexPath($1) }
    }
    
    public func didUnhighlightItemAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didUnhighlightItemAtIndexPath($1) }
    }
    
    public func shouldSelectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldSelectItemAtIndexPath($1) } ?? true
    }
    
    public func shouldDeselectItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldDeselectItemAtIndexPath($1) } ?? true
    }
    
    public func didSelectItemAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didSelectItemAtIndexPath($1) }
    }
    
    public func didDeselectItemAtIndexPath(indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didDeselectItemAtIndexPath($1) }
    }
    
    public func willDisplayCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.willDisplayCell(cell, forItemAtIndexPath: $1) }
    }
    
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.willDisplaySupplementaryView(view, forElementKind: elementKind, atIndexPath: $1) }
    }
    
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItemAtIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didEndDisplayingCell(cell, forItemAtIndexPath: $1) }
    }
    
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: NSIndexPath) {
        delegate(indexPath) { $0.didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, atIndexPath: $1) }
    }
    
    public func shouldShowMenuForItemAtIndexPath(indexPath: NSIndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldShowMenuForItemAtIndexPath($1) } ?? false
    }
    
    public func canPerformAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return delegate(indexPath) { $0.canPerformAction(action, forItemAtIndexPath: $1, withSender: sender) } ?? false
    }
    
    public func performAction(action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
        delegate(indexPath) { $0.performAction(action, forItemAtIndexPath: $1, withSender: sender) }
    }
    
    // Flow Layout Delegate
    
    private var flowLayout: UICollectionViewFlowLayout {
        return parent?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItemAtIndexPath(indexPath: NSIndexPath) -> CGSize {
        return delegate(indexPath) { $0.sizeForItemAtIndexPath($1) } ?? flowLayout.itemSize
    }
    
    public func insetForSectionAtIndex(section: Int) -> UIEdgeInsets {
        return delegate(section) { $0.insetForSectionAtIndex($1) } ?? flowLayout.sectionInset
    }
    
    public func minimumLineSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return delegate(section) { $0.minimumLineSpacingForSectionAtIndex($1) } ?? flowLayout.minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(section: Int) -> CGFloat {
        return delegate(section) { $0.minimumInteritemSpacingForSectionAtIndex($1) } ?? flowLayout.minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(section: Int) -> CGSize {
        return delegate(section) { $0.referenceSizeForHeaderInSection($1) } ?? flowLayout.headerReferenceSize
    }
    
    public func referenceSizeForFooterInSection(section: Int) -> CGSize {
        return delegate(section) { $0.referenceSizeForFooterInSection($1) } ?? flowLayout.headerReferenceSize
    }
    
    // Data Source
    
    public func numberOfItemsInSection(section: Int) -> Int {
        return delegate(section) { $0.numberOfItemsInSection($1) } ?? 0
    }
    
    public func cellForItemAtIndexPath(indexPath: NSIndexPath) -> UICollectionViewCell {
        return delegate(indexPath) { $0.cellForItemAtIndexPath($1) } ?? UICollectionViewCell()
    }
    
    public var numberOfSections: Int {
        return collections.reduce(0) { $0 + $1.numberOfSections }
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        return delegate(indexPath) { $0.viewForSupplementaryElementOfKind(kind, atIndexPath: $1) } ?? UICollectionReusableView()
    }
    
}
