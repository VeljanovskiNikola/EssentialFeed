//
//  CoreDataHelpers.swift
//  EssentialFeed
//
//  Created by Nikola Veljanovski on 8.5.25.
//

import CoreData

internal extension NSPersistentContainer {
    static func load(name: String, model: NSManagedObjectModel, url: URL) throws -> NSPersistentContainer {
        let description = NSPersistentStoreDescription(url: url)
        let container = NSPersistentContainer(name: name, managedObjectModel: model)
        container.persistentStoreDescriptions = [description]
        
        var loadError: Swift.Error?
        container.loadPersistentStores { loadError = $1 }
        try loadError.map { throw $0 }
        return container
    }
}

extension NSManagedObjectModel {
    static func with(name: String, in bundle: Bundle) -> NSManagedObjectModel? {
        return bundle.url(
            forResource: name,
            withExtension: "momd"
        ).flatMap {
            NSManagedObjectModel(
                contentsOf: $0
            )
        }
    }
}
