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
    func willDisplayCell(_ cell: UICollectionViewCell)
    func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String)
    func didEndDisplayingCell(_ cell: UICollectionViewCell)
    func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String)
    var shouldShowMenu: Bool { get }
    func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool
    func performAction(_ action: Selector, withSender sender: Any?)
    
    // Flow Layout Delegate
    
    var size: CGSize { get }
    
    // Data Source
    
    var cell: UICollectionViewCell { get }
    func viewForSupplementaryElementOfKind(_ kind: String) -> UICollectionReusableView
    
}
