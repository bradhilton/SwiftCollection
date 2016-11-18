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
    
    public func shouldHighlightItem(_ item: Int) -> Bool { return true }
    public func didHighlightItem(_ item: Int) {}
    public func didUnhighlightItem(_ item: Int) {}
    public func shouldSelectItem(_ item: Int) -> Bool { return true }
    public func shouldDeselectItem(_ item: Int) -> Bool { return true }
    public func didSelectItem(_ item: Int) {}
    public func didDeselectItem(_ item: Int) {}
    public func willDisplayCell(_ cell: UICollectionViewCell, forItem item: Int) {}
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int) {}
    public func didEndDisplayingCell(_ cell: UICollectionViewCell, forItem item: Int) {}
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int) {}
    public func shouldShowMenuForItem(_ item: Int) -> Bool { return false }
    public func canPerformAction(_ action: Selector, forItem item: Int, withSender sender: Any?) -> Bool { return false }
    public func performAction(_ action: Selector, forItem item: Int, withSender sender: Any?) {}
    
    // Flow Layout Delegate
    
    fileprivate var flowLayout: UICollectionViewFlowLayout {
        return collection?.parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public func sizeForItem(_ item: Int) -> CGSize {
        return flowLayout.itemSize
    }
    
    public var inset: UIEdgeInsets {
        get {
            return getAssociatedValue(key: "inset", object: self) ?? flowLayout.sectionInset
        }
        set {
            set(associatedValue: newValue, key: "inset", object: self)
        }
    }
    
    public var minimumLineSpacing: CGFloat {
        get {
            return getAssociatedValue(key: "minimumLineSpacing", object: self) ?? flowLayout.minimumLineSpacing
        }
        set {
            set(associatedValue: newValue, key: "minimumLineSpacing", object: self)
        }
    }
    
    public var minimumInteritemSpacing: CGFloat {
        get {
            return getAssociatedValue(key: "minimumInteritemSpacing", object: self) ?? flowLayout.minimumInteritemSpacing
        }
        set {
            set(associatedValue: newValue, key: "minimumInteritemSpacing", object: self)
        }
    }
    
    public var referenceSizeForHeader: CGSize {
        get {
            return getAssociatedValue(key: "referenceSizeForHeader", object: self) ?? flowLayout.headerReferenceSize
        }
        set {
            set(associatedValue: newValue, key: "referenceSizeForHeader", object: self)
        }
    }
    
    public var referenceSizeForFooter: CGSize {
        get {
            return getAssociatedValue(key: "referenceSizeForFooter", object: self) ?? flowLayout.footerReferenceSize
        }
        set {
            set(associatedValue: newValue, key: "referenceSizeForFooter", object: self)
        }
    }
    
    // Data Source
    
    public var numberOfItems: Int {
        return 0
    }
    
    public func cellForItem(_ item: Int) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String, item: Int) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
