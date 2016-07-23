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
            return getAssociatedValueForProperty("shouldHighlight", ofObject: self) ?? true
        }
        set {
            setAssociatedValue(newValue, forProperty: "shouldHighlight", ofObject: self)
        }
    }
    
    public func didHighlight() {}
    public func didUnhighlight() {}
    
    public var shouldSelect: Bool {
        get {
            return getAssociatedValueForProperty("shouldSelect", ofObject: self) ?? true
        }
        set {
            setAssociatedValue(newValue, forProperty: "shouldSelect", ofObject: self)
        }
    }
    
    public var shouldDeselect: Bool {
        get {
            return getAssociatedValueForProperty("shouldDeselect", ofObject: self) ?? true
        }
        set {
            setAssociatedValue(newValue, forProperty: "shouldDeselect", ofObject: self)
        }
    }
    
    public func didSelect() {}
    public func didDeselect() {}
    public func willDisplayCell(cell: UICollectionViewCell) {}
    public func willDisplaySupplementaryView(view: UICollectionReusableView, forElementKind elementKind: String) {}
    public func didEndDisplayingCell(cell: UICollectionViewCell) {}
    public func didEndDisplayingSupplementaryView(view: UICollectionReusableView, forElementOfKind elementKind: String) {}
    
    public var shouldShowMenu: Bool {
        get {
            return getAssociatedValueForProperty("shouldShowMenu", ofObject: self) ?? false
        }
        set {
            setAssociatedValue(newValue, forProperty: "shouldShowMenu", ofObject: self)
        }
    }
    
    public func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool { return false }
    public func performAction(action: Selector, withSender sender: AnyObject?) {}
    
    // Flow Layout Delegate
    
    private var flowLayout: UICollectionViewFlowLayout {
        return section?.collection?.parent?.collectionView?.collectionViewLayout as? UICollectionViewFlowLayout ?? UICollectionViewFlowLayout()
    }
    
    public var size: CGSize {
        get {
            return getAssociatedValueForProperty("size", ofObject: self) ?? flowLayout.itemSize
        }
        set {
            setAssociatedValue(newValue, forProperty: "size", ofObject: self)
        }
    }
    
    // Data Source
    
    public var cell: UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    public func viewForSupplementaryElementOfKind(kind: String) -> UICollectionReusableView {
        return UICollectionReusableView()
    }
    
}
