//
//  SectionSource+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

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
        return collection?.parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItem(item: Int) -> CGSize {
        return flowLayout.itemSize
    }
    
    public var inset: UIEdgeInsets {
        get {
            return getAssociatedValueForProperty("inset", ofObject: self) ?? flowLayout.sectionInset
        }
        set {
            setAssociatedValue(newValue, forProperty: "inset", ofObject: self)
        }
    }
    
    public var minimumLineSpacing: CGFloat {
        get {
            return getAssociatedValueForProperty("minimumLineSpacing", ofObject: self) ?? flowLayout.minimumLineSpacing
        }
        set {
            setAssociatedValue(newValue, forProperty: "minimumLineSpacing", ofObject: self)
        }
    }
    
    public var minimumInteritemSpacing: CGFloat {
        get {
            return getAssociatedValueForProperty("minimumInteritemSpacing", ofObject: self) ?? flowLayout.minimumInteritemSpacing
        }
        set {
            setAssociatedValue(newValue, forProperty: "minimumInteritemSpacing", ofObject: self)
        }
    }
    
    public var referenceSizeForHeader: CGSize {
        get {
            return getAssociatedValueForProperty("referenceSizeForHeader", ofObject: self) ?? flowLayout.headerReferenceSize
        }
        set {
            setAssociatedValue(newValue, forProperty: "referenceSizeForHeader", ofObject: self)
        }
    }
    
    public var referenceSizeForFooter: CGSize {
        get {
            return getAssociatedValueForProperty("referenceSizeForFooter", ofObject: self) ?? flowLayout.footerReferenceSize
        }
        set {
            setAssociatedValue(newValue, forProperty: "referenceSizeForFooter", ofObject: self)
        }
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
