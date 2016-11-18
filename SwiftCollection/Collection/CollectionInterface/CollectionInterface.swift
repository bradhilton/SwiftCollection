//
//  CollectionInterface.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 4/11/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

public protocol CollectionInterface : _Collection {
    
    func dequeueReusableCellWithReuseIdentifier(_ identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionViewCell
    func dequeueReusableSupplementaryViewOfKind(_ elementKind: String, withReuseIdentifier identifier: String, forItem item: Int, inSection section: SectionSource) -> UICollectionReusableView
    func selectedItemsInSection(_ section: SectionSource) -> [Int]?
    func selectItem(_ item: Int?, inSection section: SectionSource, animated: Bool, scrollPosition: UICollectionViewScrollPosition)
    func deselectItem(_ item: Int, inSection section: SectionSource, animated: Bool)
    func numberOfItemsInSection(_ section: SectionSource) -> Int
    func layoutAttributesForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes?
    func layoutAttributesForSupplementaryElementOfKind(_ kind: String, atItem item: Int, inSection section: SectionSource) -> UICollectionViewLayoutAttributes?
    func itemAtPoint(_ point: CGPoint, inSection section: SectionSource) -> Int?
    func itemForCell(_ cell: UICollectionViewCell, inSection section: SectionSource) -> Int?
    func cellForItem(_ item: Int, inSection section: SectionSource) -> UICollectionViewCell?
    func visibleItemsInSection(_ section: SectionSource) -> [Int]
    func scrollToItem(_ item: Int, inSection section: SectionSource, atScrollPosition scrollPosition: UICollectionViewScrollPosition, animated: Bool)
    func insertSection(_ section: SectionSource)
    func deleteSection(_ section: SectionSource)
    func reloadSection(_ section: SectionSource)
    func insertItems(_ items: [Int], inSection section: SectionSource)
    func deleteItems(_ items: [Int], inSection section: SectionSource)
    func reloadItems(_ items: [Int], inSection section: SectionSource)
    func moveItem(_ item: Int, to newPosition: Int, inSection section: SectionSource)
    
}
