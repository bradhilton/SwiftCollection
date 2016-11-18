//
//  SectionCollection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues
import OrderedObjectSet

public protocol SectionCollection : CollectionSource, CollectionInterface {
    var sections: OrderedObjectSet<SectionSource> { get set }
}

extension SectionCollection {
    
    public var sections: OrderedObjectSet<SectionSource> {
        get {
            return getAssociatedValue(key: "sections", object: self, initialValue: OrderedObjectSet())
        }
        set {
            sections.subtracting(newValue).forEach { $0.collection = nil }
            newValue.subtracting(sections).forEach { $0.collection = self }
            set(associatedValue: newValue, key: "sections", object: self)
        }
    }
    
    func index(_ section: SectionSource) -> Int? {
        return sections.index { $0 === section }
    }
    
    func delegate<T>(_ section: SectionSource, handler: (Int) -> T?) -> T? {
        guard let index = sections.index(where: { $0 === section }) else { return nil }
        return handler(index)
    }
    
    func itemForSection(_ section: SectionSource, fromIndexPath indexPath: IndexPath?) -> Int? {
        guard let indexPath = indexPath, indexPath.section == index(section) else { return nil }
        return indexPath.item
    }
    
    func itemsForSection(_ section: SectionSource, fromIndexPaths indexPaths: [IndexPath]?) -> [Int]? {
        guard let indexPaths = indexPaths, let index = index(section) else { return nil }
        let items = indexPaths.filter { $0.section == index }.map { $0.item }
        return items.count > 0 ? items : nil
    }
    
    func indexPathsFromSection(_ section: SectionSource, withItems items: [Int]) -> [IndexPath] {
        guard let index = index(section) else { return [] }
        return items.map { IndexPath(item: $0, section: index) }
    }
    
    func indexPathsFromItems(_ items: [Int], inSection section: SectionSource) -> [IndexPath] {
        guard let index = index(section) else { return [] }
        return items.map { IndexPath(item: $0, section: index) }
    }
    
}
