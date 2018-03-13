//
//  SectionSource.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol SectionSource : _Section {
    
    // Delegate
    
    func shouldHighlightItem(_ item: Int) -> Bool
    func didHighlightItem(_ item: Int)
    func didUnhighlightItem(_ item: Int)
    func shouldSelectItem(_ item: Int) -> Bool
    func shouldDeselectItem(_ item: Int) -> Bool
    func didSelectItem(_ item: Int)
    func didDeselectItem(_ item: Int)
    func willDisplayCell(_ cell: UICollectionViewCell, forItem item: Int)
    func willDisplaySupplementaryView(_ view: UICollectionReusableView, forElementKind elementKind: String, forItem item: Int)
    func didEndDisplayingCell(_ cell: UICollectionViewCell, forItem item: Int)
    func didEndDisplayingSupplementaryView(_ view: UICollectionReusableView, forElementOfKind elementKind: String, forItem item: Int)
    
    // Flow Layout Delegate
    
    func sizeForItem(_ item: Int) -> CGSize
    var inset: UIEdgeInsets { get }
    var minimumLineSpacing: CGFloat { get }
    var minimumInteritemSpacing: CGFloat { get }
    var referenceSizeForHeader: CGSize { get }
    var referenceSizeForFooter: CGSize { get }
    
    // Data Source
    
    var numberOfItems: Int { get }
    func cellForItem(_ item: Int) -> UICollectionViewCell
    func viewForSupplementaryElementOfKind(_ kind: String, item: Int) -> UICollectionReusableView
    
}
