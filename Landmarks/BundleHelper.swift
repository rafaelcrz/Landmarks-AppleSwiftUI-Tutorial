//
//  BundleHelper.swift
//  Landmarks
//
//  Created by Rafael Ramos on 01/09/21.
//

import Foundation

enum FileLoadError: Error {
    case fileNotFound
}

protocol BundleHelperProtocol {
    func load<T: Decodable>(_ filename: String, withExtension fileEx: String) throws -> T
}

final class BundleHelper: BundleHelperProtocol {
    func load<T>(_ filename: String, withExtension fileEx: String) throws -> T where T : Decodable {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: fileEx) else {
            throw FileLoadError.fileNotFound
        }
        
        data = try Data(contentsOf: file)
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
}
