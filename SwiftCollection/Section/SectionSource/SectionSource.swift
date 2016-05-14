//
//  SectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol SectionSource : _Section {
    
    // Delegate
    
    func shouldHighlightItem(item: Int) -> Bool
    func didHighlightItem(item: Int)
    func didUnhighlightItem(item: Int)
    func shouldSelectItem(item: Int) -> Bool
    func shouldDeselectItem(item: Int) -> Bool
    func didSelectItem(item: Int)
    func didDeselectItem(item: Int)
    func willDisplayCell(cell: UICollectionViewCell, forItem item: Int)
    func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int)
    func didEndDisplayingCell(cell: UICollectionViewCell, forItem item: Int)
    func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int)
    func shouldShowMenuForItem(item: Int) -> Bool
    func canPerformAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) -> Bool
    func performAction(action: Selector, forItem item: Int, withSender sender: AnyObject?)
    
    // Flow Layout Delegate
    
    func sizeForItem(item: Int) -> CGSize
    var inset: UIEdgeInsets { get }
    var minimumLineSpacing: CGFloat { get }
    var minimumInteritemSpacing: CGFloat { get }
    var referenceSizeForHeader: CGSize { get }
    var referenceSizeForFooter: CGSize { get }
    
    // Data Source
    
    var numberOfItems: Int { get }
    func cellForItem(item: Int) -> UICollectionViewCell
    func viewForSupplementaryElementOfKind(kind: String, item: Int) -> UICollectionReusableView
    
}
