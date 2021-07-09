//
//  BrandGridView.swift
//  touchDown
//
//  Created by TI Digital on 09/07/21.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,  spacing: ColumnSpacing, content: {
                ForEach(brands){brand in
                    BrandItemView(brand: brand)
                }
            })//:GRID
            .frame(height: 200)
            .padding(15)
        })//: Scroll
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
