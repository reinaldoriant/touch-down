//
//  CodableBundleExtension.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import Foundation

extension Bundle{
    func decode<T: Codable>( file:String)->T{
        
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file) in bundle.")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        return decodedData
    }
}
