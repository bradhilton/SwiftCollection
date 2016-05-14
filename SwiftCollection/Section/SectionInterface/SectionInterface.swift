//
//  SectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol SectionInterface : _Section {
    
    func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: ItemSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: ItemSource) -> UICollectionReusableView
    func selectItem(item: ItemSource?, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
    func deselectItem(item: ItemSource, animated: Bool)
    func layoutAttributesForItem(item: ItemSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: ItemSource) -> UICollectionViewLayoutAttributes?
    func cellForItem(item: ItemSource) -> UICollectionViewCell?
    func scrollToItem(item: ItemSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
    func insertItem(item: ItemSource)
    func deleteItem(item: ItemSource)
    func reloadItem(item: ItemSource)
    
}
