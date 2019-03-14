//
//  SectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol SectionInterface : _Section {
    
    func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forItem item: ItemSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forItem item: ItemSource) -> UICollectionReusableView
    func selectItem(_ item: ItemSource?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition)
    func deselectItem(_ item: ItemSource, animated: Bool)
    func layoutAttributesForItem(_ item: ItemSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atItem item: ItemSource) -> UICollectionViewLayoutAttributes?
    func cellForItem(_ item: ItemSource) -> UICollectionViewCell?
    func scrollToItem(_ item: ItemSource, atScrollPosition scrollPosition: UICollectionView.ScrollPosition, animated: Bool)
    func insertItem(_ item: ItemSource)
    func deleteItem(_ item: ItemSource)
    func reloadItem(_ item: ItemSource)
    
}
