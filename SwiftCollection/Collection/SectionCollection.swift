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
            return getAssociatedValueForProperty("sections", ofObject: self, withInitialValue: OrderedObjectSet())
        }
        set {
            sections.subtract(newValue).forEach { $0.collection = nil }
            newValue.subtract(sections).forEach { $0.collection = self }
            setAssociatedValue(newValue, forProperty: "sections", ofObject: self)
        }
    }
    
    func index(section: SectionSource) -> Int? {
        return sections.indexOf { $0 === section }
    }
    
    func delegate<T>(section: SectionSource, handler: (Int) -> T?) -> T? {
        guard let index = sections.indexOf({ $0 === section }) else { return nil }
        return handler(index)
    }
    
    func itemForSection(section: SectionSource, fromIndexPath indexPath: NSIndexPath?) -> Int? {
        guard let indexPath = indexPath where indexPath.section == index(section) else { return nil }
        return indexPath.item
    }
    
    func itemsForSection(section: SectionSource, fromIndexPaths indexPaths: [NSIndexPath]?) -> [Int]? {
        guard let indexPaths = indexPaths, index = index(section) else { return nil }
        let items = indexPaths.filter { $0.section == index }.map { $0.item }
        return items.count > 0 ? items : nil
    }
    
    func indexPathsFromSection(section: SectionSource, withItems items: [Int]) -> [NSIndexPath] {
        guard let index = index(section) else { return [] }
        return items.map { NSIndexPath(forItem: $0, inSection: index) }
    }
    
    func indexPathsFromItems(items: [Int], inSection section: SectionSource) -> [NSIndexPath] {
        guard let index = index(section) else { return [] }
        return items.map { NSIndexPath(forItem: $0, inSection: index) }
    }
    
}
