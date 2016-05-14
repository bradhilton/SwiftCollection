//
//  ItemSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol ItemSource : _Item {
    
    // Delegate
    
    var shouldHighlight: Bool { get }
    func didHighlight()
    func didUnhighlight()
    var shouldSelect: Bool { get }
    var shouldDeselect: Bool { get }
    func didSelect()
    func didDeselect()
    func willDisplayCell(cell: UICollectionViewCell)
    func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String)
    func didEndDisplayingCell(cell: UICollectionViewCell)
    func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String)
    var shouldShowMenu: Bool { get }
    func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool
    func performAction(action: Selector, withSender sender: AnyObject?)
    
    // Flow Layout Delegate
    
    var size: CGSize { get }
    
    // Data Source
    
    var cell: UICollectionViewCell { get }
    func viewForSupplementaryElementOfKind(kind: String) -> UICollectionReusableView
    
}
