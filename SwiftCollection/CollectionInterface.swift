//
//  CollectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol CollectionInterface : _Collection {
    
    func dequeueReusableCellWithReuseIdentifier(identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView
    func selectedItemsInSection(section: SectionSource) -> [Int]?
    func selectItem(item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
    func deselectItem(item: Int, inSection section: SectionSource, animated: Bool)
    func numberOfItemsInSection(section: SectionSource) -> Int
    func layoutAttributesForItem(item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes?
    func itemAtPoint(point: CGPoint, inSection section: SectionSource) -> Int?
    func itemForCell(cell: UICollectionViewCell, inSection section: SectionSource) -> Int?
    func cellForItem(item: Int, inSection section: SectionSource) -> UICollectionViewCell?
    func visibleItemsInSection(section: SectionSource) -> [Int]
    func supplementaryViewForElementKind(elementKind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionReusableView
    func itemsForVisibleSupplementaryElementsOfKind(elementKind: String, inSection section: SectionSource) -> [Int]
    func scrollToItem(item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
    func insertSection(section: SectionSource)
    func deleteSection(section: SectionSource)
    func reloadSection(section: SectionSource)
    func insertItems(items: [Int], inSection section: SectionSource)
    func deleteItems(items: [Int], inSection section: SectionSource)
    func reloadItems(items: [Int], inSection section: SectionSource)
    func moveItem(item: Int, to newPosition: Int, inSection section: SectionSource)
    
}
