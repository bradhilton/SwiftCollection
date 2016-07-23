//
//  ItemSource+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension ItemSource {
    
    // Delegate
    
    public var shouldHighlight: Bool { return true }
    public func didHighlight() {}
    public func didUnhighlight() {}
    public var shouldSelect: Bool { return true }
    public var shouldDeselect: Bool { return true }
    public func didSelect() {}
    public func didDeselect() {}
    public func willDisplayCell(cell: UICollectionViewCell) {}
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String) {}
    public func didEndDisplayingCell(cell: UICollectionViewCell) {}
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String) {}
    public var shouldShowMenu: Bool { return false }
    public func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool { return false }
    public func performAction(action: Selector, withSender sender: AnyObject?) {}
    
    // Flow Layout Delegate
    
    private var flowLayout: UICollectionViewFlowLayout {
        return section?.collection?.parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public var size: CGSize { return flowLayout.itemSize }
    
    // Data Source
    
    public var cell: UICollectionViewCell { return UICollectionViewCell() }
    
    public func viewForSupplementaryElementOfKind(kind: String) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
