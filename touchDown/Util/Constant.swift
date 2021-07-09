//
//  Constant.swift
//  touchDown
//
//  Created by TI Digital on 08/07/21.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode(file: "player.json")
let categories: [Category] = Bundle.main.decode(file: "category.json")

// COLOR

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let ColumnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}


// UX

// API

// IMAGE


// FONT

// STRING


// MISC
