//
//  ItemSource+Implementation.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues

extension ItemSource {
    
    // Delegate
    
    public var shouldHighlight: Bool {
        get {
            return getAssociatedValue(key: "shouldHighlight", object: self) ?? true
        }
        set {
            set(associatedValue: newValue, key: "shouldHighlight", object: self)
        }
    }
    
    public func didHighlight() {}
    public func didUnhighlight() {}
    
    public var shouldSelect: Bool {
        get {
            return getAssociatedValue(key: "shouldSelect", object: self) ?? true
        }
        set {
            set(associatedValue: newValue, key: "shouldSelect", object: self)
        }
    }
    
    public var shouldDeselect: Bool {
        get {
            return getAssociatedValue(key: "shouldDeselect", object: self) ?? true
        }
        set {
            set(associatedValue: newValue, key: "shouldDeselect", object: self)
        }
    }
    
    public func didSelect() {}
    public func didDeselect() {}
    public func willDisplayCell(_ cell: UICollectionViewCell) {}
    public func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String) {}
    public func didEndDisplayingCell(_ cell: UICollectionViewCell) {}
    public func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String) {}
    
    public var shouldShowMenu: Bool {
        get {
            return getAssociatedValue(key: "shouldShowMenu", object: self) ?? false
        }
        set {
            set(associatedValue: newValue, key: "shouldShowMenu", object: self)
        }
    }
    
    public func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool { return false }
    public func performAction(_ action: Selector, withSender sender: Any?) {}
    
    // Flow Layout Delegate
    
    fileprivate var flowLayout: UICollectionViewFlowLayout {
        return section?.collection?.parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public var size: CGSize {
        get {
            return getAssociatedValue(key: "size", object: self) ?? flowLayout.itemSize
        }
        set {
            set(associatedValue: newValue, key: "size", object: self)
        }
    }
    
    // Data Source
    
    public var cell: UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public func viewForSupplementaryElementOfKind(_ kind: String) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
