//
//  SectionSource+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension SectionSource {
    
    // Delegate
    
    public func shouldHighlightItem(item: Int) -> Bool { return true }
    public func didHighlightItem(item: Int) {}
    public func didUnhighlightItem(item: Int) {}
    public func shouldSelectItem(item: Int) -> Bool { return true }
    public func shouldDeselectItem(item: Int) -> Bool { return true }
    public func didSelectItem(item: Int) {}
    public func didDeselectItem(item: Int) {}
    public func willDisplayCell(cell: UICollectionViewCell, forItem item: Int) {}
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {}
    public func didEndDisplayingCell(cell: UICollectionViewCell, forItem item: Int) {}
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {}
    public func shouldShowMenuForItem(item: Int) -> Bool { return false }
    public func canPerformAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) -> Bool { return false }
    public func performAction(action: Selector, forItem item: Int, withSender sender: AnyObject?) {}
    
    // Flow Layout Delegate
    
    private var flowLayout: UICollectionViewFlowLayout {
        return collection?.parent?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItem(item: Int) -> CGSize {
        return flowLayout.itemSize
    }
    
    public var inset: UIEdgeInsets {
        return flowLayout.sectionInset
    }
    
    public var minimumLineSpacing: CGFloat {
        return flowLayout.minimumLineSpacing
    }
    
    public var minimumInteritemSpacing: CGFloat {
        return flowLayout.minimumInteritemSpacing
    }
    
    public var referenceSizeForHeader: CGSize {
        return flowLayout.headerReferenceSize
    }
    
    public var referenceSizeForFooter: CGSize {
        return flowLayout.footerReferenceSize
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return 0
    }
    
    public func cellForItem(item: Int) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public func viewForSupplementaryElementOfKind(kind: String, item: Int) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
