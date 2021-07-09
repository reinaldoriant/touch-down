//
//  ProductModel.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import Foundation

struct Product:Codable,Identifiable{
    let id:Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
