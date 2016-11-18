//
//  MultiCollection+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension MultiCollection {
    
    // Delegate
    
    public func shouldHighlightItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldHighlightItemAtIndexPath($1) } ?? true
    }
    
    public func didHighlightItemAtIndexPath(_ indexPath: IndexPath) {
        delegate(indexPath) { $0.didHighlightItemAtIndexPath($1) }
    }
    
    public func didUnhighlightItemAtIndexPath(_ indexPath: IndexPath) {
        delegate(indexPath) { $0.didUnhighlightItemAtIndexPath($1) }
    }
    
    public func shouldSelectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldSelectItemAtIndexPath($1) } ?? true
    }
    
    public func shouldDeselectItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldDeselectItemAtIndexPath($1) } ?? true
    }
    
    public func didSelectItemAtIndexPath(_ indexPath: IndexPath) {
        delegate(indexPath) { $0.didSelectItemAtIndexPath($1) }
    }
    
    public func didDeselectItemAtIndexPath(_ indexPath: IndexPath) {
        delegate(indexPath) { $0.didDeselectItemAtIndexPath($1) }
    }
    
    public func willDisplayCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        delegate(indexPath) { $0.willDisplayCell(cell, forItemAtIndexPath: $1) }
    }
    
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, atIndexPath indexPath: IndexPath) {
        delegate(indexPath) { $0.willDisplaySupplementaryView(view, forElementKind: elementKind, atIndexPath: $1) }
    }
    
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItemAtIndexPath indexPath: IndexPath) {
        delegate(indexPath) { $0.didEndDisplayingCell(cell, forItemAtIndexPath: $1) }
    }
    
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, atIndexPath indexPath: IndexPath) {
        delegate(indexPath) { $0.didEndDisplayingSupplementaryView(view, forElementOfKind: elementKind, atIndexPath: $1) }
    }
    
    public func shouldShowMenuForItemAtIndexPath(_ indexPath: IndexPath) -> Bool {
        return delegate(indexPath) { $0.shouldShowMenuForItemAtIndexPath($1) } ?? false
    }
    
    public func canPerformAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return delegate(indexPath) { $0.canPerformAction(action, forItemAtIndexPath: $1, withSender: sender) } ?? false
    }
    
    public func performAction(_ action: Selector, forItemAtIndexPath indexPath: IndexPath, withSender sender: Any?) {
        delegate(indexPath) { $0.performAction(action, forItemAtIndexPath: $1, withSender: sender) }
    }
    
    // Flow Layout Delegate
    
    fileprivate var flowLayout: UICollectionViewFlowLayout {
        return parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItemAtIndexPath(_ indexPath: IndexPath) -> CGSize {
        return delegate(indexPath) { $0.sizeForItemAtIndexPath($1) } ?? flowLayout.itemSize
    }
    
    public func insetForSectionAtIndex(_ section: Int) -> UIEdgeInsets {
        return delegate(section) { $0.insetForSectionAtIndex($1) } ?? flowLayout.sectionInset
    }
    
    public func minimumLineSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return delegate(section) { $0.minimumLineSpacingForSectionAtIndex($1) } ?? flowLayout.minimumLineSpacing
    }
    
    public func minimumInteritemSpacingForSectionAtIndex(_ section: Int) -> CGFloat {
        return delegate(section) { $0.minimumInteritemSpacingForSectionAtIndex($1) } ?? flowLayout.minimumInteritemSpacing
    }
    
    public func referenceSizeForHeaderInSection(_ section: Int) -> CGSize {
        return delegate(section) { $0.referenceSizeForHeaderInSection($1) } ?? flowLayout.headerReferenceSize
    }
    
    public func referenceSizeForFooterInSection(_ section: Int) -> CGSize {
        return delegate(section) { $0.referenceSizeForFooterInSection($1) } ?? flowLayout.headerReferenceSize
    }
    
    // Data Source
    
    public func numberOfItemsInSection(_ section: Int) -> Int {
        return delegate(section) { $0.numberOfItemsInSection($1) } ?? 0
    }
    
    public func cellForItemAtIndexPath(_ indexPath: IndexPath) -> UICollectionViewCell {
        return delegate(indexPath) { $0.cellForItemAtIndexPath($1) } ?? UICollectionViewCell()
    }
    
    public var numberOfSections: Int {
        return collections.reduce(0) { $0 + $1.numberOfSections }
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, atIndexPath indexPath: IndexPath) -> UICollectionReusableView {
        return delegate(indexPath) { $0.viewForSupplementaryElementOfKind(kind, atIndexPath: $1) } ?? UICollectionReusableView()
    }
    
}
