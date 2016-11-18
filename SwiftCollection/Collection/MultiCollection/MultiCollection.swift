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
            return getAssociatedValue(key: "collections", object: self, initialValue: OrderedObjectSet())
        }
        set {
            collections.subtracting(newValue).forEach { $0.parent = nil }
            newValue.subtracting(collections).forEach { $0.parent = self }
            set(associatedValue: newValue, key: "collections", object: self)
        }
    }
    
    func collectionForSection(_ section: Int) -> CollectionSource? {
        return collectionForIndex(section) { $0 + $1.numberOfSections }
    }
    
    func collectionForIndex(_ index: Int, combine: (Int, CollectionSource) -> Int) -> CollectionSource? {
        for i in collections.indices {
            if index < collections[0...i].reduce(0, combine) {
                return self.collections[i]
            }
        }
        return nil
    }
    
    func sectionOffsetForCollection(_ collection: CollectionSource) -> Int {
        if let i = collections.index(where: { $0 === collection }) {
            return collections[0..<i].reduce(0) { $0 + $1.numberOfSections }
        }
        return 0
    }
    
    func indexSetFromCollection(_ collection: CollectionSource, indexSet: IndexSet) -> IndexSet {
        return indexSet.reduce(IndexSet()) {
            var copy = $0
            copy.insert(sectionFromCollection(collection, section: $1))
            return copy
        }
    }
    
    func indexPathsForCollection(_ collection: CollectionSource, indexPaths: [IndexPath]?) -> [IndexPath]? {
        guard let indexPaths = indexPaths else { return nil }
        return indexPaths.filter { collectionForSection($0.section) === collection }.map { indexPathForCollection(collection, indexPath: $0) }
    }
    
    func indexPathsFromCollection(_ collection: CollectionSource, indexPaths: [IndexPath]) -> [IndexPath] {
        return indexPaths.map { indexPathFromCollection(collection, indexPath: $0) }
    }
    
    func optionalIndexPathForCollection(_ collection: CollectionSource, indexPath: IndexPath?) -> IndexPath? {
        guard let indexPath = indexPath, collectionForSection(indexPath.section) === collection else { return nil }
        return indexPathForCollection(collection, indexPath: indexPath)
    }
    
    func indexPathForCollection(_ collection: CollectionSource, indexPath: IndexPath) -> IndexPath {
        return IndexPath(item: indexPath.item, section: sectionForCollection(collection, section: indexPath.section))
    }
    
    func optionalIndexPathFromCollection(_ collection: CollectionSource, indexPath: IndexPath?) -> IndexPath? {
        guard let indexPath = indexPath else { return nil }
        return indexPathFromCollection(collection, indexPath: indexPath)
    }
    
    func indexPathFromCollection(_ collection: CollectionSource, indexPath: IndexPath) -> IndexPath {
        return IndexPath(item: indexPath.item, section: sectionFromCollection(collection, section: indexPath.section))
    }
    
    func sectionForCollection(_ collection: CollectionSource, section: Int) -> Int {
        return section - sectionOffsetForCollection(collection)
    }
    
    func sectionFromCollection(_ collection: CollectionSource, section: Int) -> Int {
        return section + sectionOffsetForCollection(collection)
    }
    
    func delegate<T>(_ indexPath: IndexPath, handler: (CollectionSource, IndexPath) -> T?) -> T? {
        guard let collection = collectionForSection(indexPath.section) else { return nil }
        return handler(collection, indexPathForCollection(collection, indexPath: indexPath))
    }
    
    func delegate<T>(_ section: Int, handler: (CollectionSource, Int) -> T?) -> T? {
        guard let collection = collectionForSection(section) else { return nil }
        return handler(collection, sectionForCollection(collection, section: section))
    }
    
    func respond<T>(_ collection: CollectionSource, indexPath: IndexPath, handler: (IndexPath) -> T?) -> T? {
        return handler(indexPathFromCollection(collection, indexPath: indexPath))
    }
    
    func respond<T>(_ collection: CollectionSource, section: Int, handler: (Int) -> T?) -> T? {
        return handler(sectionFromCollection(collection, section: section))
    }
    
}


