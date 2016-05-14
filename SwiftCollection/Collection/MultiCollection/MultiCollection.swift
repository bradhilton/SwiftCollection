//
//  MultiCollection.swift
//  SwiftCollection
//
//  Created by Bradley Hilton on 5/13/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

import AssociatedValues
import OrderedObjectSet

public protocol MultiCollection : CollectionSource, ParentInterface {
    var collections: OrderedObjectSet<CollectionSource> { get set }
}

extension MultiCollection {
    
    public var collections: OrderedObjectSet<CollectionSource> {
        get {
            return getAssociatedValueForProperty("collections", ofObject: self, withInitialValue: OrderedObjectSet())
        }
        set {
            collections.subtract(newValue).forEach { $0.parent = nil }
            newValue.subtract(collections).forEach { $0.parent = self }
            setAssociatedValue(newValue, forProperty: "collections", ofObject: self)
        }
    }
    
    func collectionForSection(section: Int) -> CollectionSource? {
        return collectionForIndex(section) { $0 + $1.numberOfSections }
    }
    
    func collectionForIndex(index: Int, combine: (Int, CollectionSource) -> Int) -> CollectionSource? {
        for i in collections.indices {
            if index < collections[0...i].reduce(0, combine: combine) {
                return self.collections[i]
            }
        }
        return nil
    }
    
    func sectionOffsetForCollection(collection: CollectionSource) -> Int {
        if let i = collections.indexOf({ $0 === collection }) {
            return collections[0..<i].reduce(0) { $0 + $1.numberOfSections }
        }
        return 0
    }
    
    func indexSetFromCollection(collection: CollectionSource, indexSet: NSIndexSet) -> NSIndexSet {
        return indexSet.reduce(NSMutableIndexSet()) { $0.addIndex(sectionFromCollection(collection, section: $1)); return $0 }
    }
    
    func indexPathsForCollection(collection: CollectionSource, indexPaths: [NSIndexPath]?) -> [NSIndexPath]? {
        guard let indexPaths = indexPaths else { return nil }
        return indexPaths.filter { collectionForSection($0.section) === collection }.map { indexPathForCollection(collection, indexPath: $0) }
    }
    
    func indexPathsFromCollection(collection: CollectionSource, indexPaths: [NSIndexPath]) -> [NSIndexPath] {
        return indexPaths.map { indexPathFromCollection(collection, indexPath: $0) }
    }
    
    func optionalIndexPathForCollection(collection: CollectionSource, indexPath: NSIndexPath?) -> NSIndexPath? {
        guard let indexPath = indexPath where collectionForSection(indexPath.section) === collection else { return nil }
        return indexPathForCollection(collection, indexPath: indexPath)
    }
    
    func indexPathForCollection(collection: CollectionSource, indexPath: NSIndexPath) -> NSIndexPath {
        return NSIndexPath(forItem: indexPath.item, inSection: sectionForCollection(collection, section: indexPath.section))
    }
    
    func optionalIndexPathFromCollection(collection: CollectionSource, indexPath: NSIndexPath?) -> NSIndexPath? {
        guard let indexPath = indexPath else { return nil }
        return indexPathFromCollection(collection, indexPath: indexPath)
    }
    
    func indexPathFromCollection(collection: CollectionSource, indexPath: NSIndexPath) -> NSIndexPath {
        return NSIndexPath(forItem: indexPath.item, inSection: sectionFromCollection(collection, section: indexPath.section))
    }
    
    func sectionForCollection(collection: CollectionSource, section: Int) -> Int {
        return section - sectionOffsetForCollection(collection)
    }
    
    func sectionFromCollection(collection: CollectionSource, section: Int) -> Int {
        return section + sectionOffsetForCollection(collection)
    }
    
    func delegate<T>(indexPath: NSIndexPath, handler: (CollectionSource, NSIndexPath) -> T?) -> T? {
        guard let collection = collectionForSection(indexPath.section) else { return nil }
        return handler(collection, indexPathForCollection(collection, indexPath: indexPath))
    }
    
    func delegate<T>(section: Int, handler: (CollectionSource, Int) -> T?) -> T? {
        guard let collection = collectionForSection(section) else { return nil }
        return handler(collection, sectionForCollection(collection, section: section))
    }
    
    func respond<T>(collection: CollectionSource, indexPath: NSIndexPath, handler: (NSIndexPath) -> T?) -> T? {
        return handler(indexPathFromCollection(collection, indexPath: indexPath))
    }
    
    func respond<T>(collection: CollectionSource, section: Int, handler: (Int) -> T?) -> T? {
        return handler(sectionFromCollection(collection, section: section))
    }
    
}


